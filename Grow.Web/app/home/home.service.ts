import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';
// import { Constants } from '../../app.constants';

@Injectable()
export class HomeService {
  constructor(private http: Http) { }
  
  
  private baseUrl: string = 'http://localhost:60449/GrowService.svc/Pruebas';
//   private baseUrl: string = Cons.url;
  

  getHome() {
    return this.http.get(this.baseUrl)
      .map(response => response.json());
  }
}