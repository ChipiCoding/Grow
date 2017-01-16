import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';
// import { Constants } from '../../app.constants';

@Injectable()
export class BankService {
  constructor(private http: Http) { }
  
  
  private baseUrl: string = 'http://localhost:60449/Services/GrowService.svc/Banks';
//   private baseUrl: string = Cons.url;
  

  getBanks() {
    return this.http.get(this.baseUrl)
      .map(response => response.json());
  }
}