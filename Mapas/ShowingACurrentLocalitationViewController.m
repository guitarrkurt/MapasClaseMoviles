//
//  ShowingACurrentLocalitationViewController.m
//  Mapas
//
//  Created by guitarrkurt on 27/10/14.
//  Copyright (c) 2014 David G. López. All rights reserved.
//

#import "ShowingACurrentLocalitationViewController.h"

@implementation ShowingACurrentLocalitationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //...PRIMER MODULO (MUESTRA PUEBLA)...
    //Indicamos al delegado que seremos nos otros mismos
    self.mapVIew.delegate = self;
    //Creamos un punto pasandole la latitud y longitud(GPS), respectivamente
    CLLocationCoordinate2D puebla = CLLocationCoordinate2DMake(19.0133, -98.2833);
    //Asignamos un cuadro que tendra 10000 metros de distancia, desde el punto que creamos (Parecido ZOOM)
    self.mapVIew.region = MKCoordinateRegionMakeWithDistance(puebla, 150000, 150000);
    //Preguntamos al usuario si podemos usar su GPS para encontrar la localización y la mostramos (Solo pregunta una vez)
    if ([CLLocationManager locationServicesEnabled]) {
        self.mapVIew.showsUserLocation = YES;
    }
    
    //...SEGUNDO MODULO (MUESTRA UN SEGUIMIENTO AL USUARIO, EN EL MAPA)...
    if ([CLLocationManager locationServicesEnabled]) {
        //Lo mismo de arriba, solo para que se visualize más claro
        self.mapVIew.showsUserLocation = YES;
        //Modificar el modo de seguimiento ??
        [self.mapVIew setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
        //El mapa se desplaza para mantener la ubicación del usuario en el centro. La parte superior del mapa se encuentra al norte. Si el usuario cierra el mapa de forma manual, el seguimiento se detiene.
    }
    //...TERCER MODULO (DEBIDO A QUE "EL SEGUIMIENTO POR PISTA", SE DETIENE CUANDO TOCAMOS EL MAPA, HACEMOS UN MODULO QUE PERMITE HACER ZOOM Y QUE CONTINUE EL SEGUIMIENTO)...
    //Creamos un nuevo "ToolBar" al cual le vamos a agregar un boton que contendra
    //Una flechita azul(la cual la provee la API), ya que es un boton especial, el cual permite que al ser precionado cambiar entre modos
    //"AnMKUserTrackingBarButtonItem object is a specialized bar button item that allows the user to toggle through the user tracking modes. For example, when the user taps the button, the map view toggles between tracking the user with and without heading. The button also reflects the current user tracking mode if set elsewhere. This bar button item is associated to a single map view." DOCUMENTACIÓN OFICIAL DE APPLE
    MKUserTrackingBarButtonItem *trackingButton = [[MKUserTrackingBarButtonItem alloc] initWithMapView:self.mapVIew];
    //AL final agregamos el boton a nuestro "Toolbar" de una manera programada, sin nada visual (drag and drop)
    [self.mapToolbar setItems:[NSArray arrayWithObjects:trackingButton, nil] animated:YES];
    
}
/*-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
 self.userLocationLabel.text = [NSString stringWithFormat:@"Location: %.5f°, %.5f°", userLocation.coordinate.latitude, userLocation.coordinate.longitude];
 }*/
-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    self.userLocationLabel.text = [NSString stringWithFormat:@" Location: %.5f°, %.5f°", userLocation.coordinate.latitude, userLocation.coordinate.longitude];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
