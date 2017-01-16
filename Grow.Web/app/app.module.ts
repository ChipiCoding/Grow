import { NgModule, Injectable }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

//Componente principal
import { AppComponent }   from './app.component';

//Componentes segcundarios
// import { home }  from './home/home.component';
import { home }  from './home/home.component';
import { bank }  from './bank/bank.component';

//Pipes
import { TruncateBankPipe } from './bank/bank.pipe';

//Modulo de enrutamiento
import { routing } from './app.routing';

//Modulo para el consumo de servicios
import { Http, HttpModule } from '@angular/http';

//No se que hace pero soluciono el ngModel
import { FormsModule }   from '@angular/forms';



@NgModule({
  imports:      [ BrowserModule, routing, HttpModule, FormsModule ],
  declarations: [ AppComponent,  home, bank, TruncateBankPipe],
  bootstrap:    [ AppComponent ]
})

@Injectable()

export class AppModule { 
	constructor(private http: Http) { }
}
