function sysCall_threadmain()
    -- Put some initialization code here
    Link1=sim.getObjectHandle('Revolute_joint')
    Link2=sim.getObjectHandle('Revolute_joint0')
    Point=sim.getObjectHandle('Dummy')
    
    P1 = {11,0}
    P2 = {0,11}
    titikX = 1
    for titikX=10,1,-1 do
        titikY = ((P2[2]-P1[2])/(P2[1]-P1[1]))*(titikX-P1[1])+P1[2]
        invKin(titikX,titikY,5.5,5.5)
        sim.wait(2)
    end
    
    -- Put your main loop here, e.g.:
    --
     while sim.getSimulationState()~=sim.simulation_advancing_abouttostop do
    --     local p=sim.getObjectPosition(objHandle,-1)
    --     p[1]=p[1]+0.001
    --     sim.setObjectPosition(objHandle,-1,p)
    --     sim.switchThread() -- resume in next simulation step
     end
end

function sysCall_cleanup()
    -- Put some clean-up code here
end

-- See the user manual or the available code snippets for additional callback functions and details
function toRad(degree)
    degree=degree*(3.14/180)
    return degree
end

function toDeg(degree)
    degree=degree*(180/3.14)
    return degree
end

function invKin(x,y,l1,l2)
    --Betha
    B=math.acos(((l1^2)+(l2^2)-(x^2)-(y^2))/(2*l1*l2))
    --Theta 2
    T2=toRad(180)-B
    --Theta 1
    T1=math.atan2(y,x)-math.atan2(l2*math.sin(T2),l1+l2*math.cos(T2))
    
    --print(toDeg(T2))
    --print(toDeg(T1))
    --Move joints according to the value of Thetas
    sim.setJointTargetPosition(Link1,T1)
    sim.setJointTargetPosition(Link2,T2)
end
