val x =  10;
val x = 10.5;
x;
val x = "hello";
x;

val x = #"c";
val x = "c";

val x = 10-5;
val x = 0-5;
val x = ~5;

val x = 10*5;

val quociente = 9 div 3
val resto = 9 mod 3;

fun add(x: int, y :int): int = x + y;

val resultado = add(5,3);

x = 50; (*quando n tem o val, é uma comparação*)

fun fatorial(n:int): int = 
if n = 0 then 1
else n * fatorial(n-1);

fatorial(6);

(*Higher-Order Functions*)
fun triplaAplicacao(f: int -> int, x: int): int =
  f(f(f(x)));

fun incremento(y:int): int = y+1;

val resultado = triplaAplicacao(incremento,10);

(*Função que retorna função*)
fun makeAdder(a:int): int -> int = 
  fn b => a + b;

val addFive = makeAdder(5);

val resultado = addFive(10);

val quadrado = fn x => x*x;

val resultado = quadrado(6);

(*Pattern Matching*)
fun parOuImpar(n:int): string =
  case n mod 2 of
    0 => "Par"
  | 1 => "Ímpar"
  | _ => "Desconhecido";

parOuImpar(0);

val x = [1,2,3];
val x = [(1, "carlos"),(2, "andré")];

fun sumList(lst: int list): int =
  case lst of
    [] => 0
  | (*desestruturação da lista*) x::xs => x + sumList(xs);

val lista = [];
sumList(lista);

val lista = [10];
sumList(lista);

val lista = [10,5];
sumList(lista);

(*acessando elemento de lista por índice*)
val names = ["Carlos", "Andre", "Joao", "Antonio","Roberto"];
List.nth(names, 2);

val hedgehogs = [(1,"Shadow"),(2,"Sonic")];
val dado = List.nth(hedgehogs,1);
#2 dado;
#1 dado;
val tuple = (3,"Joao");

(*DATA TYPES*)
(*Tuplas - Coleções Ordenadas*)

val person = ("Wagner", 39, 44, 96, 1.82);
val(name,age,footSize,weight, height) = person;
#1 person;

(* Records - Coleções não ordenadas com campos nomeados *)

type person = {name: string, age:int};

val xpto = {name:"bernardo", age = 20};
#name xpto;

(*Lists - Coleções Ordenadas- homogêneas*)
val mnu