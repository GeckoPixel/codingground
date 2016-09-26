#import <Foundation/Foundation.h>

@interface Calculadora : NSObject
{
    @protected resultado;
    @private resultadoprevio;
}

@property int op1
@property int op2;

-(id) init;
-(void) suma;
-(void) resta;

@end

@implementation Calculadora

-(void) suma
{
    self->resultadoprevio = self->resultado;
    self->resultado = op1+op2;
}

-(void) resta
{
    self->resultadoprevio = resultado;
    self->resultado = op1 - op2;
}

-(void) print
{
    NSLog(@"El resultado es: %d",self->resultado);
    NSLog(@"El resultado anterior es: %d", self->resultadoprevio);
}
@end

int main (int argc, const char * argv[])
{
   Calculadora * calc = [[Calculadora alloc] init];

   [calc setOp1: 1];
   [calc setOp2: 3];
   [calc suma];
   [calc resta];
   
   return 0;
}
