import { inject, AfterViewInit, ChangeDetectorRef, Component, ElementRef, Inject, QueryList, Renderer2, ViewChild, ViewChildren, ViewContainerRef, OnInit, afterNextRender } from '@angular/core';
import { ViewEncapsulation } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { ProductComponent } from './product.component.js';
import { CommonModule } from '@angular/common';

@Component({
  standalone: true,
  selector: 'iris-home',
  imports: [RouterOutlet, CommonModule, ProductComponent],
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss'],
  encapsulation: ViewEncapsulation.None
})


export class HomeComponent implements AfterViewInit, OnInit {
  @ViewChild('toggleButton') toggleButton!: ElementRef;
  @ViewChild('untoggleButton') untoggleButton!: ElementRef;
  @ViewChild('categories') categories!: ElementRef;
  @ViewChildren('category') category!: QueryList<ElementRef>;
  @ViewChildren('category__tagColor') categoryTag!: QueryList<ElementRef>;
  @ViewChild('products', { read: ElementRef }) products!: ElementRef;
  @ViewChild('products', { read: ViewContainerRef }) productsView!: ViewContainerRef;
  @ViewChildren(ProductComponent) productHeader!: QueryList<ProductComponent>;
  @ViewChild('body') body!: ElementRef;
  @ViewChild('results__accentColor', { read: ElementRef }) resultsAccentColor!: ElementRef;
  @ViewChild('results__container', { read: ElementRef }) resultsContainer!: ElementRef;
  
  productData: { 
    visible: boolean; 
    image: string; 
    title: string; 
    description: string; 
    price: string; 
    location: string; 
    category: string; 
    headerColor: string 
  }[] = [];
  readonly _productData: 
  { 
    visible: boolean; 
    image: string; 
    title: string; 
    description: string; 
    price: string; 
    location: string; 
    category: string; 
    headerColor: string 
  }[] = [
    {
      visible: true,
      image: '/i9.jpg',
      title: 'Intel Core i9-11900K',
      description: 'Intel Core i9-11900K 8-Core 3.5GHz Processor',
      price: '$215',
      location: 'New York',
      category: 'Eletrônicos',
      headerColor: 'none'
    },
    {
      visible: true,
      image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%2Fid%2FOIP.04PeuBmNM0wFDZudGDMy7AHaEK%3Fpid%3DApi&f=1&ipt=b7bf78aca26a4a2bcc1692ff951c6e9e703c6a2011db96e5d212fc229e8935b3',
      title: 'Ryzen 5 5600X',
      description: 'Processador AMD Ryzen 5 5600X 6-Core 3.7GHz Desktop',
      price: '$200',
      location: 'São Paulo',
      category: 'Eletrônicos',
      headerColor: 'none'
    },
    {
      visible: true,
      image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.t76pbbLeECDjO3kWj3qWxwHaHa%3Fcb%3Diwp2%26pid%3DApi&f=1&ipt=d288c76bd53ce7aee3b8c51f0e2e2d0dd9284fc92bbf1305ec488ab6bf966b07',
      title: 'Bico Injetor para Fiat Stilo',
      description: 'Bico Injetor compatível com Fiat Stilo 1.8, Marca Bosch, Modelo 0280155960',
      price: 'R$120',
      location: 'Curitiba',
      category: 'Automotores',
      headerColor: 'none'
    },
    {
      visible: true,
      image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%2Fid%2FOIP.GdmY7iplWXAx19wdt-62zQHaD2%3Fpid%3DApi&f=1&ipt=0c53cbe4b7ada3c1637dac5e9466e59e6c55472dabdfed35f52861715ac3ad0f&ipo=images',
      title: 'FuelTech FT450',
      description: 'Injeção Eletrônica FuelTech FT450, com Módulo de Ignição e Sensor de Pressão',
      price: 'R$2.500',
      location: 'São Paulo',
      category: 'Automotores',
      headerColor: 'none'
    },
    {
      visible: true,
      image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimg.ltwebstatic.com%2Fimages3_spmp%2F2024%2F12%2F25%2F73%2F17351275010e7e9f059fb457fc12e24a568c4f8ec5_thumbnail_900x.jpg&f=1&nofb=1&ipt=2f1f3a93aafc88f402bcd13afb810e834a8ba5593b6da679985ca2d992de18e5',
      title: 'Botas de Chuva',
      description: 'Bota de Chuva Feminina, Impermeável, com Solado Antiderrapante na cor verde',
      price: 'R$150',
      location: 'Porto Alegre',
      category: 'Moda',
      headerColor: 'none'
    },
    {
      visible: true,
      image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F09%2F83%2F0a%2F09830af708ae52a9582dbf0a5cdedad2.png&f=1&nofb=1&ipt=cb7710ae615306984b1dd66126b7faa295381017281bd7d49952bd76f94ec4ed',
      title: 'Vestido Florido',
      description: 'Vestido Florido, com Alças Finas, Tecido Leve e Confortável',
      price: 'R$80',
      location: 'Belo Horizonte',
      category: 'Moda',
      headerColor: 'none'
    },
    {
      visible: true,
      image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.snT5AGpR4ighzX8Os_2lHQHaCr%26cb%3Diwp2%26pid%3DApi&f=1&ipt=8776229816f4736cfd974472889eb75230d4fde3fac4b73bc617d2f15c0fd4d4&ipo=images',
      title: 'Teclado Nektar Impact LX64+',
      description: 'Controlador MIDI Teclado Nektar Impact LX64+, 61 Teclas Sensíveis ao Toque compatível com software de produção musical',
      price: 'R$1.200',
      location: 'São Vicente',
      category: 'Musicais',
      headerColor: 'none'
    }
  ];

  constructor(
    private renderer: Renderer2, 
    @Inject(ElementRef) private elementRef: ElementRef, 
  ) 
  {
    console.log('HomeComponent constructor');
  }
  
  ngOnInit(): void {
  }

  ngAfterViewInit(): void {
    this.toggleButton.nativeElement.addEventListener('click', (event: MouseEvent) => {
      console.log('toggleButton clicked');
      this.categories.nativeElement.style.left = '0';
    });

    this.untoggleButton.nativeElement.addEventListener('click', (event: MouseEvent) => {
      console.log('untoggleButton clicked');
      this.categories.nativeElement.style.left = '-125%';

      // this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = 'white';
    });

    this.category.forEach((_category: ElementRef, index) => {
        _category.nativeElement.addEventListener('click', (event: MouseEvent) => {
          console.log('category clicked');
          
          const categoryColor = this.categoryTag.get(index)?.nativeElement.style.backgroundColor;

          this.productData = [];

          this.productData = this._productData.filter((product: any) => {
            console.log('category clicked', product.category, _category.nativeElement.innerText);
            return product.category === _category.nativeElement.innerText;
          });

          this.productData.forEach((product: any) => {
            product.headerColor = categoryColor;
          });

          //this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = _category.nativeElement.style.backgroundColor;
          this.resultsAccentColor.nativeElement.style.backgroundColor =
          this.resultsContainer.nativeElement.style.backgroundColor =
          categoryColor;
        })
      }
    );
  }
  
  handleClick(event: MouseEvent) {

  }

  title = 'Iris';
}
