const mysql = require ('mysql');
const{remote} = require('electron');

const con = mysql.createConnection({
    host:'localhost', 
    user:'root',
    password:'',
    database:'mydb'
});

con.connect(function(err){
    if(err){
        console.log("Erro ao conectar");
    }else{
        console.log('Conexão realizada com sucesso');
    }
});

function cadastroCliente(){
    let nome = document.getElementById('nome').value;
    let rg = document.getElementById('rg').value;
    let cpf = document.getElementById('cpf').value;
    let email = document.getElementById('email').value;
    let dt = document.getElementById('dt').value;
    let telefone = document.getElementById('telefone').value;
    let cep = document.getElementById('cep').value;
    let rua = document.getElementById('rua').value;
    let bairro = document.getElementById('bairro').value;
    let uf = document.getElementById('uf').value;
    let numero = document.getElementById('num').value;

    
    const cadastroCliente2 ={ cpf_cnpjProponente:cpf, nomeP:nome, rgP:rg, emailP:email, telP:telefone, endereco:rua, documentos:'111', dtNt:dt, nCasaP:numero, cepP:cep, bairro:bairro, uf:uf}

    con.query('INSERT INTO proponente SET ?',cadastroCliente2,function(err,res){
        if(err){ throw err;
        console.log(err);
        }else{
            alert('Dados Cadastrados!!!')
        }
    });
}

document.getElementById('cadastrar').addEventListener('click', function(){
    cadastroCliente();

})

function cadastroCorretor(){
    let nomeC = document.getElementById('nomeC').value;
    let emailC = document.getElementById('emailC').value;
    let senhaC = document.getElementById('senhaC').value;
    let senhaC1 = document.getElementById('senhaC1').value;

    const cadastroCorretor2 = {senha:senhaC, nomeCorretor:nomeC, emailCorretor:emailC, confirmarsenha:senhaC1}

    con.query('INSERT INTO corretor SET ?',cadastroCorretor2,function(err,res){
        if(err){throw err;
        console.log(err);
    }else{
        alert('Cadastro Realizado !!')

    }
    });
}

document.getElementById('cadastro1').addEventListener('click', function(){
    cadastroCorretor();
    

})