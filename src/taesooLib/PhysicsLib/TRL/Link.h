// -*- mode: c++; indent-tabs-mode: t; tab-width: 4; c-basic-offset: 4; -*-
/*
 * Copyright (c) 2008, AIST, the University of Tokyo and General Robotix Inc.
 * All rights reserved. This program is made available under the terms of the
 * Eclipse Public License v1.0 which accompanies this distribution, and is
 * available at http://www.eclipse.org/legal/epl-v10.html
 * Contributors:
 * National Institute of Advanced Industrial Science and Technology (AIST)
 * General Robotix Inc. 
 */
/**
   \file
   \author Shin'ichiro Nakaoka
*/

#ifndef TRL_LINK_H_INCLUDED
#define TRL_LINK_H_INCLUDED

#include <string>
#include <vector>
#include <ostream>
#include "Body.h"



namespace TRL {

	class Body;

    class Link {

	public:

        Link();
		Link(const Link& link);
		~Link();

		void addChild(Link* link);
		bool detachChild(Link* link);

		void copy(const Link& link);
		//void setAttitude(const matrix33& R) { this->R = R * trans(Rs); }
		//matrix33 attitude() { return matrix33(this->R * Rs); }
		inline void setAttitude(const matrix33& R) { this->R = R;}
		inline matrix33& attitude() { return R;}

		void putInformation(std::ostream& os);

		Link& operator=(const Link& link);

		Body* body;

        int				index; 
		int 			dqIndex;
		
        //std::string		name;

        enum JointType {
			FREE_JOINT,   /// 6-DOF root link
            FIXED_JOINT,        ///< fixed joint(0 dof)
            ROTATIONAL_JOINT,	///< rotational joint (1 dof)
            SLIDE_JOINT	///< translational joint (1 dof)
		};
		
        JointType jointType;

		Link*      parent;
        Link*      sibling;
        Link*      child;

        vector3			p;      ///< position

		/**
		   Internal world attitude.
		   In the model computation, it corresponds to the identity matrix
		   when all the joint angles of a robot are zero so that multiplication of
		   local attitdue matrices can be omitted to simplify the computation.
		   If you want to use the original coordinate in the model file,
		   use setSegmentAttitude() and segmentAttitude() to access R.
		*/
        matrix33		R;

        vector3			v;      ///< linear velocity 
        vector3			w;      ///< angular velocity, omega
		vector3			dv;		///< linear acceleration
        vector3			dw;     ///< derivative of omega

        double          q;      ///< joint value
        double          dq;     ///< joint velocity
        double          ddq;    ///< joint acceleration
        double          u;      ///< joint torque

        vector3			a;      ///< rotational joint axis (self local)
        vector3			d;      ///< translation joint axis (self local)
        vector3			b;      ///< relative position (parent local)

        //matrix33		Rs;    ///< relative attitude of the link segment (self local)

        double			m;      ///< mass
		matrix33		I;    	///< inertia tensor (self local, around c)
		vector3			c;      ///< center of mass (self local)
        vector3			wc;		///< R * c + p
        
		vector3			vo;     ///< translation elements of spacial velocity
        vector3			dvo;	///< derivative of vo

		/** A unit vector of angular velocity (the world coordinate) generated by the joint 
			The value is parent->R * a when the joint is the rotational type. */
		vector3			sw;
		
		/** A unit vector of spatial velocity (the world coordinate) generated by the joint.
			The value is parent->R * d when the joint is the translation type. */
        vector3			sv;
		
		vector3			cv;     ///< dsv * dq (cross velocity term)
        vector3			cw;     ///< dsw * dq (cross velocity term)

        vector3			fext;	///< external force 
        vector3			tauext;	///< external torque (around the world origin)


		
        matrix33		Iww;    ///< bottm right block of the articulated inertia
        matrix33		Iwv;    ///< bottom left block (transpose of top right block) of the articulated inertia
        matrix33		Ivv;    ///< top left block of the articulated inertia
        vector3			pf;     ///< bias force (linear element)
        vector3			ptau;   ///< bias force (torque element)
        vector3			hhv;
        vector3			hhw;
        double          uu;
        double          dd;
		
		double	Jm2;			///< Equivalent rotor inertia: n^2*Jm [kg.m^2]

		/*
        double	ulimit;			///< the upper limit of joint values
        double	llimit;			///< the lower limit of joint values
        double	uvlimit;        ///< the upper limit of joint velocities
        double	lvlimit;        ///< the lower limit of joint velocities
		*/



	private:
		void calcInverseDynamicsIter(vector3& out_f, vector3& out_tau, bool calledFromParent, Link* prevLink);

    };

};
	

std::ostream& operator<<(std::ostream &out, TRL::Link& link);


#endif
