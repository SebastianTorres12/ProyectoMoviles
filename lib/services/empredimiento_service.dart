import '../models/empredimiento.dart';

class EmprendimientoService {
  Future<List<Emprendimiento>> obtenerEmprendimientos() async {
    //await Future.delayed(Duration(seconds: 1));
    return [
      Emprendimiento(
        nombre: 'Apanados Don Diego',
        descripcion: 'Para estudiantes es un buen lugar para comer bastante y rico.',
        direccion: 'Sangolquí',
        streetViewUrl: 'https://www.google.com/maps/place/Don+Diego/@-0.3143062,-78.4419567,3a,75y,46.13h,91.23t/data=!3m7!1e1!3m5!1sYk9MJjuBsZIPp8c0oJoZwQ!2e0!6shttps:%2F%2Fstreetviewpixels-pa.googleapis.com%2Fv1%2Fthumbnail%3Fcb_client%3Dmaps_sv.tactile%26w%3D900%26h%3D600%26pitch%3D-1.2257908762856289%26panoid%3DYk9MJjuBsZIPp8c0oJoZwQ%26yaw%3D46.12549542639619!7i13312!8i6656!4m6!3m5!1s0x91d5bd1287fb5003:0xe2fce4bcc9e27614!8m2!3d-0.3142099!4d-78.4417767!16s%2Fg%2F11fglmyyw5?coh=205410&entry=ttu&g_ep=EgoyMDI0MDgyMy4wIKXMDSoASAFQAw%3D%3D',
        productoMasVendido: 'assets/images/donDiego/1.jpg',
        descripcionProducto: 'Apanados de pollo muy buenos y bien puestos.',
      ),
      Emprendimiento(
        nombre: 'Punto y Coma',
        descripcion: 'Buen lugar para comer papas.',
        direccion: 'Sangolquí',
        streetViewUrl: 'https://www.google.com/maps/place/Punto+y+Coma/@-0.3143062,-78.4419567,3a,75y,88.21h,92.27t/data=!3m7!1e1!3m5!1sYk9MJjuBsZIPp8c0oJoZwQ!2e0!6shttps:%2F%2Fstreetviewpixels-pa.googleapis.com%2Fv1%2Fthumbnail%3Fcb_client%3Dmaps_sv.tactile%26w%3D900%26h%3D600%26pitch%3D-2.2722068325011264%26panoid%3DYk9MJjuBsZIPp8c0oJoZwQ%26yaw%3D88.20586592425673!7i13312!8i6656!4m6!3m5!1s0x91d5bd126c6bd4a1:0x4c722623bafd38e0!8m2!3d-0.3142598!4d-78.4417364!16s%2Fg%2F11bbrljgq0?coh=205410&entry=ttu&g_ep=EgoyMDI0MDgyMy4wIKXMDSoASAFQAw%3D%3D',
        productoMasVendido: 'assets/images/puntoComa/1.jpg',
        descripcionProducto: 'Ricas papas con diferentes acompañados.',
      ),
      Emprendimiento(
        nombre: 'APM Electronics',
        descripcion: 'Lugar para encontrar todo tipo de artiuclos electronicos.',
        direccion: 'Sangolquí',
        streetViewUrl: 'https://www.google.com/maps/place/APM+Electronics/@-0.3145862,-78.4419711,3a,75y,110.21h,92.22t/data=!3m7!1e1!3m5!1szg2PK57qhUhDfbq9RzEUeA!2e0!6shttps:%2F%2Fstreetviewpixels-pa.googleapis.com%2Fv1%2Fthumbnail%3Fcb_client%3Dmaps_sv.tactile%26w%3D900%26h%3D600%26pitch%3D-2.219871030413799%26panoid%3Dzg2PK57qhUhDfbq9RzEUeA%26yaw%3D110.20602048455805!7i13312!8i6656!4m6!3m5!1s0x91d5bd126e497d87:0xb8f6810dd4550d2c!8m2!3d-0.3147157!4d-78.4418327!16s%2Fg%2F11gdf636ly?coh=205410&entry=ttu&g_ep=EgoyMDI0MDgyMy4wIKXMDSoASAFQAw%3D%3D',
        productoMasVendido: 'assets/images/apm/1.jpg',
        descripcionProducto: 'Ayuda con proyectos, impresiones 3D y mucho más.',
      ),
      Emprendimiento(
        nombre: 'La Costeñita',
        descripcion: 'Ricos desayunos, almuerzos y platos a la carta.',
        direccion: 'Sangolquí',
        streetViewUrl: 'https://www.google.com/maps/@-0.3161547,-78.4421053,3a,19.3y,92.52h,82.61t/data=!3m7!1e1!3m5!1s83COr3R2weIEU8yuKuQlpw!2e0!6shttps:%2F%2Fstreetviewpixels-pa.googleapis.com%2Fv1%2Fthumbnail%3Fcb_client%3Dmaps_sv.tactile%26w%3D900%26h%3D600%26pitch%3D7.38896804523624%26panoid%3D83COr3R2weIEU8yuKuQlpw%26yaw%3D92.51684999002784!7i13312!8i6656?coh=205410&entry=ttu&g_ep=EgoyMDI0MDgyMy4wIKXMDSoASAFQAw%3D%3D',
        productoMasVendido: 'assets/images/costenita/1.jpg',
        descripcionProducto: 'Rico bolon de chicharron con cafe o jugo a elección',
      ),
      Emprendimiento(
        nombre: 'La hueca del  bolon',
        descripcion: 'Ricos bolones y platos variados.',
        direccion: 'Sangolquí',
        streetViewUrl: 'https://www.google.com/maps/place/LA+HUECA+DEL+BOL%C3%93N/@-0.3122014,-78.4417712,3a,19.6y,99.68h,88.92t/data=!3m7!1e1!3m5!1suBCheifC5cklLiNoxXT5LA!2e0!6shttps:%2F%2Fstreetviewpixels-pa.googleapis.com%2Fv1%2Fthumbnail%3Fcb_client%3Dmaps_sv.tactile%26w%3D900%26h%3D600%26pitch%3D1.0825053059775627%26panoid%3DuBCheifC5cklLiNoxXT5LA%26yaw%3D99.68463170210114!7i13312!8i6656!4m6!3m5!1s0x91d5bd765d1269a3:0x7ba3c6085b18a1b0!8m2!3d-0.312222!4d-78.4416313!16s%2Fg%2F11llpq4yft?coh=205410&entry=ttu&g_ep=EgoyMDI0MDgyMy4wIKXMDSoASAFQAw%3D%3D',
        productoMasVendido: 'assets/images/hueca_bolon/1.jpg',
        descripcionProducto: 'Bolón + costilla+ huevo+ café',
      ),
      Emprendimiento(
        nombre: 'Pasteleria Flores',
        descripcion: 'Ricos pasteles húmedos económicos y personalizables.',
        direccion: 'Sangolquí',
        streetViewUrl: 'https://www.google.com/maps/@-0.298091,-78.460551,3a,62.4y,193.4h,90.65t/data=!3m7!1e1!3m5!1sDaysn_D2Y8VpMlb4mT0EDw!2e0!6shttps:%2F%2Fstreetviewpixels-pa.googleapis.com%2Fv1%2Fthumbnail%3Fcb_client%3Dmaps_sv.tactile%26w%3D900%26h%3D600%26pitch%3D-0.6505259218243538%26panoid%3DDaysn_D2Y8VpMlb4mT0EDw%26yaw%3D193.40311999042322!7i13312!8i6656?coh=205410&entry=ttu&g_ep=EgoyMDI0MDgyMy4wIKXMDSoASAFQAw%3D%3D',
        productoMasVendido: 'assets/images/pasteleria_flores/1.jpg',
        descripcionProducto: 'Pastel para 10 personas',
      ),
      Emprendimiento(
        nombre: 'Quito Bowling Club',
        descripcion: 'Lugar de entretenimiento.',
        direccion: 'Sangolquí',
        streetViewUrl: 'https://www.google.com/maps/place/Quito+Bowling+Club/@-0.3202504,-78.4423788,3a,75y,80.25h,96.14t/data=!3m7!1e1!3m5!1syYvxEbsQfhaHH5XXgt8IUg!2e0!6shttps:%2F%2Fstreetviewpixels-pa.googleapis.com%2Fv1%2Fthumbnail%3Fcb_client%3Dmaps_sv.tactile%26w%3D900%26h%3D600%26pitch%3D-6.144318464920687%26panoid%3DyYvxEbsQfhaHH5XXgt8IUg%26yaw%3D80.25166273709338!7i13312!8i6656!4m14!1m7!3m6!1s0x91d5bdddf656f74d:0xe4b9a294b0e62d08!2sPasteler%C3%ADa+Hermanos+Flores!8m2!3d-0.2982752!4d-78.4605221!16s%2Fg%2F11g1jsb36x!3m5!1s0x91d5bdafeb971725:0x9af8e45603a3cfba!8m2!3d-0.3202119!4d-78.4422721!16s%2Fg%2F11jsnxdp65?coh=205410&entry=ttu&g_ep=EgoyMDI0MDgyMy4wIKXMDSoASAFQAw%3D%3D',
        productoMasVendido: 'assets/images/bowling/1.jpg',
        descripcionProducto: 'Bolos, billar y más',
      ),
      Emprendimiento(
        nombre: 'UMAi Ramen',
        descripcion: 'Gastronomía tradicional japonesa.',
        direccion: 'Quito',
        streetViewUrl: 'https://www.google.com/maps/place/UMAi+Ramen/@-0.1798305,-78.478324,3a,75y,92.72h,94.75t/data=!3m7!1e1!3m5!1szmYzyPlHIjcFo26sIhXRQQ!2e0!6shttps:%2F%2Fstreetviewpixels-pa.googleapis.com%2Fv1%2Fthumbnail%3Fcb_client%3Dmaps_sv.tactile%26w%3D900%26h%3D600%26pitch%3D-4.7492117688959326%26panoid%3DzmYzyPlHIjcFo26sIhXRQQ%26yaw%3D92.71681246285276!7i13312!8i6656!4m15!1m8!3m7!1s0x91d59a7ce9ba8755:0x755f2bd0d36e70a7!2sLa+Carolina,+Quito!3b1!8m2!3d-0.1854961!4d-78.4837189!16s%2Fg%2F1hlh7481r!3m5!1s0x91d59ba0a55eb9cf:0x2b2b2f6aafb9e256!8m2!3d-0.1798598!4d-78.4781748!16s%2Fg%2F11nx25wgtc?coh=205410&entry=ttu&g_ep=EgoyMDI0MDgyMy4wIKXMDSoASAFQAw%3D%3D',
        productoMasVendido: 'assets/images/umai/1.jpg',
        descripcionProducto: 'Ramen tradicional',
      ),
      Emprendimiento(
          nombre: 'Nailsfactory',
          descripcion: 'Lugar de tratamiento de uñas.',
          direccion: 'Quito',
          streetViewUrl: 'https://www.google.com/maps/place/nailsfactory/@-0.1759648,-78.4784761,3a,80.1y,41.6h,93.01t/data=!3m7!1e1!3m5!1s8hAprk5O-gjIY4rAkvqoBg!2e0!6shttps:%2F%2Fstreetviewpixels-pa.googleapis.com%2Fv1%2Fthumbnail%3Fpanoid%3D8hAprk5O-gjIY4rAkvqoBg%26cb_client%3Dsearch.gws-prod.gps%26w%3D114%26h%3D120%26yaw%3D29.369827%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m6!3m5!1s0x91d59bb79cde6d09:0x29a491f5e206fd86!8m2!3d-0.176058!4d-78.4783897!16s%2Fg%2F11pd130jj6?authuser=0&coh=205409&entry=ttu&g_ep=EgoyMDI0MDgyMy4wIKXMDSoASAFQAw%3D%3D',
          productoMasVendido: 'assets/images/uñas/1.jpg',
          descripcionProducto: 'Uñas Acrilicas Futuristas',
      ),
      Emprendimiento(
          nombre: 'Tasty Korean Food',
          descripcion: 'Lugar de entretenimiento.',
          direccion: 'Quito',
          streetViewUrl: 'https://www.google.com/maps/place/Tasty+Korean+Food/@-0.1758052,-78.4782906,3a,61.1y,290.47h,82.83t/data=!3m7!1e1!3m5!1s-2Tycc-mlMWfJgbAoP9lLQ!2e0!6shttps:%2F%2Fstreetviewpixels-pa.googleapis.com%2Fv1%2Fthumbnail%3Fpanoid%3D-2Tycc-mlMWfJgbAoP9lLQ%26cb_client%3Dsearch.gws-prod.gps%26w%3D211%26h%3D120%26yaw%3D275.79663%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m6!3m5!1s0x91d59a7c342eadad:0xb325d53a1b2e9ea6!8m2!3d-0.1757967!4d-78.4783663!16s%2Fg%2F11dxnwbnd7?authuser=0&coh=205409&entry=ttu&g_ep=EgoyMDI0MDgyMy4wIKXMDSoASAFQAw%3D%3D',
          productoMasVendido: 'assets/images/tasty/1.jpg',
          descripcionProducto: 'Shushi Coreano',
      ),
      Emprendimiento(
          nombre: 'Pollos Gus - Estadio Olimpico',
          descripcion: 'Lugar de Comida.',
          direccion: 'Quito',
          streetViewUrl: 'https://www.google.com/maps/place/Pollos+Gus+-+Estadio+Olimpico/@-0.1758467,-78.4776636,3a,50.3y,295.66h,88.63t/data=!3m7!1e1!3m5!1sNg1NeBKB_SRM0oZDW5hegg!2e0!6shttps:%2F%2Fstreetviewpixels-pa.googleapis.com%2Fv1%2Fthumbnail%3Fpanoid%3DNg1NeBKB_SRM0oZDW5hegg%26cb_client%3Dsearch.gws-prod.gps%26w%3D211%26h%3D120%26yaw%3D289.34366%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m6!3m5!1s0x91d59a82fceaf4d1:0x70fe0dcf7e59886c!8m2!3d-0.1758007!4d-78.4777968!16s%2Fg%2F11bbrh_hmw?authuser=0&coh=205409&entry=ttu&g_ep=EgoyMDI0MDgyMy4wIKXMDSoASAFQAw%3D%3D',
          productoMasVendido: 'assets/images/gus/1.jpg',
          descripcionProducto: 'Combo Individual',
      ),
    ];
  }
}
