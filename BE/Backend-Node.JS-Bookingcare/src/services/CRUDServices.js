import bcrypt from'bcryptjs';
import db from '../models/index';
import { raw } from 'body-parser';
import { where } from 'sequelize';
import { restart } from 'nodemon';
const salt = bcrypt.genSaltSync(10);
let createNewUser =async (data) =>{
    return new Promise(async (resolve, reject) =>{
        try{
            let hashPasswordFromBcrypt= await bcrypt.hashSync(data.password,salt);
            await db.User.create({
                email: data.email,
                password: hashPasswordFromBcrypt,
                firstName: data.firstName,
                lastName: data.lastName,
                address: data.address,
                phonenumber: data.phonenumber,
                gender: data.gender ==='1' ? true:false ,
                roleId: data.roleId,
            })
            resolve(' Create a new user sussced')
        }catch(e){
            reject(e);
        }
    })
}
let hashUserPassword =(password) =>{
    return new Promise(async(resolve, reject)=>{
        try{
            var hashPassword= await bcrypt.hashSync(password,salt);
            resolve(hashPassword);
        }catch(e){
            reject(e);
        }
        
        
    })
}
let getAllUser = ()=>{
    return new Promise(async(resolve, reject)=>{
            try{
               let users = db.User.findAll({
                raw:true,
               });
               resolve(users)
            }catch(e){
                reject(e);
            }
    })
}
let getUserById = (userId) => {
    return new Promise(async (resolve, reject) => {
        try {
            let user = await db.User.findOne({
                where: { id: userId }  ,
                raw: true,
            });

            if (user) {
                resolve(user);
            } else {
                resolve(null);  // Nếu không có user, trả về null thay vì []
            }
        } catch (e) {
            reject(e);
        }
    });
};
let updateUserData =(data)=>{
   return new Promise (async(resolve,reject) => {
    try{
        let user = await db.User.findOne({
            where: {id:  data.id}
        })
        if(user){
            user.firstName = data.firstName;
            user.lastName = data.lastName;
            user.address = data.address;
            await user.save();
            let allUsers = await db.User.findAll();
            resolve(allUsers);
        }else{
            resolve();
        }
    }catch(e){
        console.log(e);
    }
   })
};
let deleteUserById =(userId) =>{
    return new Promise (async(resolve,reject) => {
        try{
            let user = await db.User.findOne({ 
                where: {id:userId }
            })
            if(user){ 
                await user.destroy();
            }
            resolve();
        }catch(e){
            reject(e);
        }
    })
};
module.exports = {
    createNewUser,
    getAllUser,
    getUserById,
    updateUserData,
    deleteUserById,
}