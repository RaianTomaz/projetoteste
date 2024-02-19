const electron = require('electron');
const {app, BrowserWindow} = electron;

let janela;

app.on('ready',function(){
    janela = new BrowserWindow({
        width:1360,
        height:720,
        webPreferences:{
            nodeIntegration:true,
            enableRemoteModule:true
        }
    });
    janela.loadURL(`file://${__dirname}/index.html`);
})

function inicio(){
    janela = new BrowserWindow({
        width:1360,
        height:720,
        webPreferences:{
        nodeIntegration:true,
        enableRemoteModule:true
        }
    });
    janela.loadURL(`file://${__dirname}/paginas/inicio.html`);
}
