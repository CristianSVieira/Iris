import { NgFor, NgForOf, NgIf } from '@angular/common';
import { AfterViewInit, Component, ElementRef, Inject, Input, OnInit, QueryList, Renderer2, ViewChild, ViewChildren, ViewContainerRef, ViewEncapsulation } from '@angular/core';
import { ProductService } from './product.service';
import { RouterOutlet } from '@angular/router';

@Component({
    standalone: true,
    selector:    'iris-product',
    templateUrl: './product.component.html',
    styleUrls: ['./product.component.scss'],
    imports:     [ RouterOutlet, NgForOf, NgFor, NgIf ],
    providers:  [ ProductService ],
    host: {
      class: 'product' // Add the 'product' class to the host element
    },
    encapsulation: ViewEncapsulation.None
})

export class ProductComponent {
    @Input() imagePath!: string;
    @Input() title!: string;
    //@Input() description!: string;
    @Input() price!: string;
    @Input() location!: string;
    @Input() headerColor!: string;
    
}