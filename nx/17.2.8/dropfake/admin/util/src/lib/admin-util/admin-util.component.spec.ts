import { ComponentFixture, TestBed } from '@angular/core/testing';
import { AdminUtilComponent } from './admin-util.component';

describe('AdminUtilComponent', () => {
  let component: AdminUtilComponent;
  let fixture: ComponentFixture<AdminUtilComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [AdminUtilComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(AdminUtilComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
