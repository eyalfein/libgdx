LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
 
LOCAL_MODULE    := gdx-bullet
LOCAL_C_INCLUDES := src/ 
 
LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O2 -Wall -D__ANDROID__
LOCAL_CPPFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O2 -Wall -D__ANDROID__
LOCAL_LDLIBS := -lm
LOCAL_ARM_MODE  := arm
 
LOCAL_SRC_FILES := com.badlogic.gdx.physics.bullet.collision.BulletObject.cpp\
	src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp\
	src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp\
	src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp\
	src/BulletCollision/BroadphaseCollision/btDbvt.cpp\
	src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp\
	src/BulletCollision/BroadphaseCollision/btDispatcher.cpp\
	src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp\
	src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp\
	src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp\
	src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp\
	src/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.cpp\
	src/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.cpp\
	src/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.cpp\
	src/BulletCollision/CollisionDispatch/btBoxBoxDetector.cpp\
	src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp\
	src/BulletCollision/CollisionDispatch/btCollisionObject.cpp\
	src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp\
	src/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.cpp\
	src/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.cpp\
	src/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.cpp\
	src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp\
	src/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.cpp\
	src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp\
	src/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.cpp\
	src/BulletCollision/CollisionDispatch/btGhostObject.cpp\
	src/BulletCollision/CollisionDispatch/btInternalEdgeUtility.cpp\
	src/BulletCollision/CollisionDispatch/btManifoldResult.cpp\
	src/BulletCollision/CollisionDispatch/btSimulationIslandManager.cpp\
	src/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.cpp\
	src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp\
	src/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.cpp\
	src/BulletCollision/CollisionDispatch/btUnionFind.cpp\
	src/BulletCollision/CollisionDispatch/SphereTriangleDetector.cpp\
	src/BulletCollision/CollisionShapes/btBox2dShape.cpp\
	src/BulletCollision/CollisionShapes/btBoxShape.cpp\
	src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp\
	src/BulletCollision/CollisionShapes/btCapsuleShape.cpp\
	src/BulletCollision/CollisionShapes/btCollisionShape.cpp\
	src/BulletCollision/CollisionShapes/btCompoundShape.cpp\
	src/BulletCollision/CollisionShapes/btConcaveShape.cpp\
	src/BulletCollision/CollisionShapes/btConeShape.cpp\
	src/BulletCollision/CollisionShapes/btConvex2dShape.cpp\
	src/BulletCollision/CollisionShapes/btConvexHullShape.cpp\
	src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp\
	src/BulletCollision/CollisionShapes/btConvexPointCloudShape.cpp\
	src/BulletCollision/CollisionShapes/btConvexPolyhedron.cpp\
	src/BulletCollision/CollisionShapes/btConvexShape.cpp\
	src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp\
	src/BulletCollision/CollisionShapes/btCylinderShape.cpp\
	src/BulletCollision/CollisionShapes/btEmptyShape.cpp\
	src/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.cpp\
	src/BulletCollision/CollisionShapes/btMinkowskiSumShape.cpp\
	src/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.cpp\
	src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp\
	src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp\
	src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp\
	src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp\
	src/BulletCollision/CollisionShapes/btShapeHull.cpp\
	src/BulletCollision/CollisionShapes/btSphereShape.cpp\
	src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp\
	src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp\
	src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp\
	src/BulletCollision/CollisionShapes/btTriangleBuffer.cpp\
	src/BulletCollision/CollisionShapes/btTriangleCallback.cpp\
	src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp\
	src/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.cpp\
	src/BulletCollision/CollisionShapes/btTriangleMesh.cpp\
	src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp\
	src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp\
	src/BulletCollision/Gimpact/btContactProcessing.cpp\
	src/BulletCollision/Gimpact/btGenericPoolAllocator.cpp\
	src/BulletCollision/Gimpact/btGImpactBvh.cpp\
	src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp\
	src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp\
	src/BulletCollision/Gimpact/btGImpactShape.cpp\
	src/BulletCollision/Gimpact/btTriangleShapeEx.cpp\
	src/BulletCollision/Gimpact/gim_box_set.cpp\
	src/BulletCollision/Gimpact/gim_contact.cpp\
	src/BulletCollision/Gimpact/gim_memory.cpp\
	src/BulletCollision/Gimpact/gim_tri_collision.cpp\
	src/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.cpp\
	src/BulletCollision/NarrowPhaseCollision/btConvexCast.cpp\
	src/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.cpp\
	src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp\
	src/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.cpp\
	src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp\
	src/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.cpp\
	src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp\
	src/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.cpp\
	src/BulletCollision/NarrowPhaseCollision/btRaycastCallback.cpp\
	src/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.cpp\
	src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp\
	src/BulletDynamics/Character/btKinematicCharacterController.cpp\
	src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp\
	src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp\
	src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp\
	src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp\
	src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp\
	src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp\
	src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp\
	src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp\
	src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp\
	src/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.cpp\
	src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp\
	src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp\
	src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp\
	src/BulletDynamics/Dynamics/btRigidBody.cpp\
	src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp\
	src/BulletDynamics/Dynamics/Bullet-C-API.cpp\
	src/BulletDynamics/Vehicle/btRaycastVehicle.cpp\
	src/BulletDynamics/Vehicle/btWheelInfo.cpp\
	src/BulletMultiThreaded/btGpu3DGridBroadphase.cpp\
	src/BulletMultiThreaded/btParallelConstraintSolver.cpp\
	src/BulletMultiThreaded/btThreadSupportInterface.cpp\
	src/BulletMultiThreaded/PosixThreadSupport.cpp\
	src/BulletMultiThreaded/SequentialThreadSupport.cpp\
	src/BulletMultiThreaded/SpuCollisionObjectWrapper.cpp\
	src/BulletMultiThreaded/SpuCollisionTaskProcess.cpp\
	src/BulletMultiThreaded/SpuContactManifoldCollisionAlgorithm.cpp\
	src/BulletMultiThreaded/SpuFakeDma.cpp\
	src/BulletMultiThreaded/SpuGatheringCollisionDispatcher.cpp\
	src/BulletMultiThreaded/SpuLibspe2Support.cpp\
	src/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/boxBoxDistance.cpp\
	src/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuCollisionShapes.cpp\
	src/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuContactResult.cpp\
	src/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuGatheringCollisionTask.cpp\
	src/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuMinkowskiPenetrationDepthSolver.cpp\
	src/BulletMultiThreaded/SpuSampleTask/SpuSampleTask.cpp\
	src/BulletMultiThreaded/SpuSampleTaskProcess.cpp\
	src/BulletMultiThreaded/Win32ThreadSupport.cpp\
	src/BulletSoftBody/btDefaultSoftBodySolver.cpp\
	src/BulletSoftBody/btSoftBody.cpp\
	src/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.cpp\
	src/BulletSoftBody/btSoftBodyHelpers.cpp\
	src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp\
	src/BulletSoftBody/btSoftRigidCollisionAlgorithm.cpp\
	src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp\
	src/BulletSoftBody/btSoftSoftCollisionAlgorithm.cpp\
	src/LinearMath/btAlignedAllocator.cpp\
	src/LinearMath/btConvexHull.cpp\
	src/LinearMath/btConvexHullComputer.cpp\
	src/LinearMath/btGeometryUtil.cpp\
	src/LinearMath/btQuickprof.cpp\
	src/LinearMath/btSerializer.cpp\
	src/MiniCL/MiniCL.cpp\
	src/MiniCL/MiniCLTask/MiniCLTask.cpp\
	src/MiniCL/MiniCLTaskScheduler.cpp
 
include $(BUILD_SHARED_LIBRARY)
