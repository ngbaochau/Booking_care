import db from "../models/index";
import CRUDServices from '../services/CRUDServices'

let getHomePage = async (req, res) => {
    try {
        let data = await db.User.findAll();

        return res.render('homepage.ejs', {
            data: JSON.stringify(data)
        });
    } catch (e) {
        console.log(e);
    }
};
// Định nghĩa hàm getCRUD bên ngoài
let getCRUD = async (req, res) => {
    return res.render('crud.ejs');
};
let postCRUD = async (req, res) => {
    let message  = await CRUDServices.createNewUser(req.body);    
    console.log(message)
    return res.send('POST CRUD FROM SERVER');
};
let displayGetCRUD = async (req, res) => {
    let data = await CRUDServices.getAllUser();    
    console.log(data)
    return res.render('displayCRUD.ejs',{
        dataTable: data
    });
};
let getEditCRUD = async(req, res)=>{
    let userId = req.query.id
    if(userId){
        let userData = await CRUDServices.getUserById(userId);
        // check userData not found

        //let userData
        return res.render ('editCRUD.ejs', {
            user:userData
        });  
    }
    else{
        return res.send ("USER NOT FOUND");  
    }
   
};
let putCRUD = async(req,res)=>{
    let data = req.body;
   let allUsers = await CRUDServices.updateUserData(data);
   return res.render ('displayCRUD.ejs', {dataTable:allUsers});
};
let deleteCRUD = async(req, res)=>{
    let id = req.query.id;
    if(id){
      await CRUDServices.deleteUserById(id);  
      return res.send('Delete user succeed')
    }
    else{
        return res.send('User not found')
    }
    
}
// Export các hàm
module.exports = {
    getHomePage,
    getCRUD,
    postCRUD,
    displayGetCRUD,
    getEditCRUD,
    putCRUD,
    deleteCRUD,
};
