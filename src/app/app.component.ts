import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { CommonModule } from '@angular/common';
import {FormsModule} from '@angular/forms';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, CommonModule, FormsModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})

export class AppComponent {
  title = 'Zad';

  selectUrl: string = 'http://localhost:1234/';
  tab: any[] = [];
  select: boolean = false;


  value: { [key: number]: number } = {};

  constructor(private http: HttpClient) {}

  ngOnInit() {
    this.getDane();
  }

  zmiana(element: any) {
    element.css = !element.css;
  }

  getDane(): void {
    this.http.get<any[]>(this.selectUrl).subscribe({
      next: (data) => {
        this.tab = data;

        for (let element of this.tab) {
          this.value[element.ID] = 70;
        }
      }
    });
  
 }

}
