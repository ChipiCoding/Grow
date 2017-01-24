import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';
// import { Constants } from '../app.constants';

@Injectable()
export class BankService {
  constructor(private http: Http) { }    
  
  private baseUrl: string = 'http://localhost:60449/Services/GrowService.svc/Banks';
  // private baseUrl: string = 'http://localhost:49212/api/Bank';

  
  
  

  getBanks() {
    // return this.http.get(this.baseUrl)
    return this.http.get('../../assets/Pruebas/bank.json')
      .map(response => response.json());
  }
}