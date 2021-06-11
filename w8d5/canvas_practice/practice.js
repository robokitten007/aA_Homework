document.addEventListener("DOMContentLoaded", function(){
const canvasElement = document.getElementById("mycanvas");
canvasElement.height = 500;
canvasElement.width = 500;
const ctx =canvasElement.getContext("2d");
ctx.fillStyle = "red";
ctx.fillRect(0,0,250,250);

ctx.beginPath();
ctx.arc(50,50,25,0,365,true);
ctx.strokeStyle ="black";
ctx.lineWidth = "10";
ctx.stroke();

ctx.fillStyle="green";
ctx.fill();

});
