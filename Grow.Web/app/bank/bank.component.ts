import { Component } from '@angular/core';
import { BankService } from './bank.service';
// import { TruncatePipe } from './bank.pipe';

@Component({
    selector: 'bank',
    //template: '<div *ngFor="let p of banks"> {{p.code}}</div> ',
    templateUrl: '/app/bank/bank.component.template.html',
    providers: [BankService],
    // pipes: [TruncatePipe], 

})

export class bank {
    private hideElement: boolean = true;

    toggleElement() {

        if (this.hideElement)
            this.hideElement = false;
        else
            this.hideElement = true;
    }
    constructor(BankService: BankService) {
        BankService.getBanks()
            .subscribe(
            banks => this.banks = banks,
            error => console.error('Error: ' + error),
            () => console.log('Completed!')
            );
    }

    banks: Object;
}







