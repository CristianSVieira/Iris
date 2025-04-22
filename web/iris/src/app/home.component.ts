import { AfterViewInit, Component, ElementRef, QueryList, ViewChild, ViewChildren, ViewEncapsulation } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
    standalone: true,
  selector: 'iris-home',
  imports: [RouterOutlet],
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss'],
  encapsulation: ViewEncapsulation.None
})
export class HomeComponent implements AfterViewInit {
  @ViewChild('toggleButton') toggleButton!: ElementRef;
  @ViewChild('untoggleButton') untoggleButton!: ElementRef;
  @ViewChild('categories') categories!: ElementRef;
  @ViewChildren('category') category!: QueryList<ElementRef>;
  @ViewChild('body') body!: ElementRef;

  constructor(private elementRef: ElementRef) {
    console.log('HomeComponent constructor');
  }

  ngAfterViewInit(): void {
    this.toggleButton.nativeElement.addEventListener('click', (event: MouseEvent) => {
      console.log('toggleButton clicked');
      this.categories.nativeElement.style.left = '0';
    });

    this.untoggleButton.nativeElement.addEventListener('click', (event: MouseEvent) => {
      console.log('untoggleButton clicked');
      this.categories.nativeElement.style.left = '-125%';
      this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = 'white';
    });

    this.category.forEach((_category: ElementRef) => {
        _category.nativeElement.addEventListener('click', (event: MouseEvent) => {
          console.log('category clicked');
          this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = _category.nativeElement.style.backgroundColor;
        })
      }
    );
  }
  
  handleClick(event: MouseEvent) {

  }

  title = 'iris';
}
