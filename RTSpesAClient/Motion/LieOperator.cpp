/*
 * LieOperator.cpp
 *
 *  Created on: Aug 13, 2018
 *      Author: spec
 */

#include "LieOperator.h"

namespace HYUMotionBase {

LieOperator::LieOperator() {

}

LieOperator::~LieOperator() {

}

SE3 LieOperator::inverse_SE3( SE3 _SE3 )
{
	SE3 res;
	res << _SE3.block<3, 3>(0, 0).transpose(), -_SE3.block<3, 3>(0, 0).transpose()*_SE3.block<3, 1>(0, 3),
		0, 0, 0, 1;
	return res;
}

Matrix3f LieOperator::SkewMatrix(Vector3f _Vec3)
{
	Matrix3f res;
	res << 	0, 			-_Vec3(2), 	_Vec3(1),
			_Vec3(2), 	0, 			-_Vec3(0),
			-_Vec3(1), 	_Vec3(0), 	0;
	return res;
}

Matrix3f LieOperator::SkewMatrixSquare(Vector3f _Vec3)
{
	Matrix3f res;
	res << -_Vec3(2)*_Vec3(2)-_Vec3(1)*_Vec3(1), 	_Vec3(0)*_Vec3(1), 						_Vec3(0)*_Vec3(2),
			_Vec3(0)*_Vec3(1), 						-_Vec3(0)*_Vec3(0)-_Vec3(2)*_Vec3(2), 	_Vec3(1)*_Vec3(2),
			_Vec3(0)*_Vec3(2), 						_Vec3(1)*_Vec3(2), 						-_Vec3(0)*_Vec3(0)-_Vec3(1)*_Vec3(1);
	return res;
}

Adjoint LieOperator::AdjointMatrix( SE3 _SE3 )
{
	Adjoint res;
	res.setZero();

	res.block<3,3>(0,0) = _SE3.block(0, 0, 3, 3);
	res.block<3,3>(3,3) = _SE3.block(0, 0, 3, 3);
	res.block<3,3>(3,0) = SkewMatrix(_SE3.block(0, 3, 3, 1))*_SE3.block(0, 0, 3, 3);

	return res;
}

Adjoint LieOperator::AdjointDualMatrix(SE3 _SE3)
{
	Adjoint res;
	res.setZero();

	res.block(0, 0, 3, 3) = _SE3.block(0, 0, 3, 3).transpose();
	res.block(0, 3, 3, 3) = _SE3.block(0, 0, 3, 3).transpose()*SkewMatrix(_SE3.block(0, 3, 3, 1)).transpose();
	res.block(3, 3, 3, 3) = _SE3.block(0, 0, 3, 3).transpose();
	return res;
}

adjoint LieOperator::adjointMatrix(se3 _se3)
{
	adjoint res;
	res.setZero();

	res << 	SkewMatrix(_se3.head(3)), 0,
			SkewMatrix(_se3.tail(3)),	SkewMatrix(_se3.head(3));
	return res;
}

adjoint LieOperator::adjointDualMatrix(se3 _se3)
{
	adjoint res;
	res.setZero();

	res << 	-SkewMatrix(_se3.head(3)), 	-SkewMatrix(_se3.tail(3)),
			0,								-SkewMatrix(_se3.head(3));
	return res;
}

SE3 LieOperator::SE3Matrix(se3 _Twist, float _q)
{
	Matrix4f res = Matrix4f::Identity();
	Matrix3f i = Matrix3f::Identity();

	res.block(0, 0, 3, 3) = i + sinf(_q)*SkewMatrix(_Twist.head(3)) + (1 - cosf(_q))*SkewMatrixSquare(_Twist.head(3));
	res.block(0, 3, 3, 1) = (i*_q + (1 - cosf(_q))*SkewMatrix(_Twist.head(3))
			+ (_q - sinf(_q))*SkewMatrixSquare(_Twist.head(3)))*_Twist.tail(3);

	return res;
}

} /* namespace HYUMotion */
