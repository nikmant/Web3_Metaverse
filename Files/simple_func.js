
function simple_func()
{
    console.log("какая-то строчка полезная 1");
    return "какая-то строчка полезная 2";
}

function simple_func_async()
{    
    console.log("какая-то строчка полезная 1");
    return new Promise((resolve, _) => {
        resolve("какая-то строчка полезная 2");
    });     
}
