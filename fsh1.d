import std.stdio;
import std.string;
import std.algorithm;

int DT;
int CT;
string TP;
string ln;

void main() {
    File file = File("inv.fsh", "r");
    while(!file.eof()){
        while(DT==0){
            TP=(ln~" ");
            ln = strip(file.readln());
            if(ln=="("){
                DT=1;
            } else if(ln=="::"){
                DT=3; //DT=3 can be used to check wether the read was a success in a program.
            }
        }
        while(DT==1){
            ln = strip(file.readln());
            if(ln==")"){
                break;
            } else if(ln=="::"){
                ln="";
                DT=3; //DT=3 can be used to check wether the read was a success in a program.
                break;
            }
            ln=ln.replace(" ","");
            ln=ln.replace(","," = ");
            ln=ln.replace("."," , ");
            writeln(TP ~ ln);
        }
    }
}
