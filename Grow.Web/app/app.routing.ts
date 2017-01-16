import { ModuleWithProviders }  from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

// import { home } from './home/home.component'
import { bank }  from './bank/bank.component';
import { home }  from './home/home.component';


const appRoutes: Routes = [
    {
        path: '',
        component: home
    },
    {
         path: 'Banks',
         component: bank
    },    
];


export const routing: ModuleWithProviders = RouterModule.forRoot(appRoutes);