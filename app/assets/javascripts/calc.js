function calculator(form) {
a = eval(form.a.value);
b = 8*40*a/100;
c = Math.round(8.8*25/100*a);
d = Math.round(b-c)*12;
form.b.value = b;
form.total.value = c;
form.d.value = d;
}