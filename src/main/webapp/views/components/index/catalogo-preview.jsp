<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List, java.util.ArrayList, java.util.Collections" %>

<%-- ESTRUCTURA DE DATOS PARA LOS AROS --%>
<%!
    public static class Aro {
        String id;
        String marca;
        String modelo;
        String sku;
        String precioOriginal;
        String precioDescuento;
        String descuento;
        String material;
        String forma;
        String color;
        String genero;
        String tamanoCristal;
        String anchoPuente;
        String largoVarilla;
        String acercaDe;
        String[] imagenes;

        public Aro(String id, String marca, String modelo, String sku, String pOrig, String pDesc, String desc, 
                   String mat, String form, String col, String gen, String tCris, String aPuen, String lVar, String acerca, String[] imgs) {
            this.id = id;
            this.marca = marca;
            this.modelo = modelo;
            this.sku = sku;
            this.precioOriginal = pOrig;
            this.precioDescuento = pDesc;
            this.descuento = desc;
            this.material = mat;
            this.forma = form;
            this.color = col;
            this.genero = gen;
            this.tamanoCristal = tCris;
            this.anchoPuente = aPuen;
            this.largoVarilla = lVar;
            this.acercaDe = acerca;
            this.imagenes = imgs;
        }
    }
%>

<%
    
    List<Aro> listaAros = new ArrayList<>();
    
   
    listaAros.add(new Aro("1", "SWAROVSKI", "SK1015 Dorado", "SK1015 – 8056262077894", "L 10,500.00", "L 6,825.00", "35% DCTO", "Metal", "Irregular", "Dorado", "Mujer", "55mm", "19mm", "140mm", "Swarovski es una marca austriaca reconocida internacionalmente por sus cristales de talla de precisión, elegancia y diseño de alta calidad en piezas oftálmicas y de moda.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792538091/0SK1015-4004-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792538223/0SK1015-4004-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792538250/0SK1015-4004-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792538279/0SK1015-4004-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792538299/0SK1015-4004-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("2", "VOGUE EYEWEAR", "VO4298T Light Dorado", "VO4298T – 8056597826143", "L 4,700.00", "L 3,055.00", "35% DCTO", "Titanium", "Cat Eye", "Light Dorado", "Mujer", "53mm", "18mm", "140mm", "Vogue Eyewear se fundó en 1973 bajo el nombre del famoso mundo de la moda. Las colecciones combinan tendencias actuales con una gran variedad de estilos accesibles y sofisticados.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792546529/0VO4298T-5191-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792546562/0VO4298T-5191-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792546589/0VO4298T-5191-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792546680/0VO4298T-5191-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792546696/0VO4298T-5191-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("3", "VOGUE EYEWEAR", "VO4320B Rose Dorado", "VO4320B – 8056597825000", "L 3,800.00", "L 2,470.00", "35% DCTO", "Metal", "Cuadrado", "Rose Dorado", "Mujer", "53mm", "17mm", "140mm", "Vogue Eyewear combina el diseño contemporáneo con una gran variedad de estilos accesibles y sofisticados para el día a día.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792547656/0VO4320B-5152-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792547674/0VO4320B-5152-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792547695/0VO4320B-5152-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792547744/0VO4320B-5152-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792547760/0VO4320B-5152-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("4", "VOGUE EYEWEAR", "VO4328D Pale Dorado", "VO4328D – 8056597828482", "L 3,200.00", "L 2,080.00", "35% DCTO", "Metal", "Cuadrado", "Pale Dorado", "Mujer", "54mm", "19mm", "145mm", "Vogue Eyewear se fundó en 1973 bajo el nombre del famoso mundo de la moda. Las colecciones combinan tendencias actuales con una gran variedad de estilos accesibles y sofisticados.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792626784/0VO4328D-848-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792626848/0VO4328D-848-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792626867/0VO4328D-848-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792626883/0VO4328D-848-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792626899/0VO4328D-848-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("5", "VERSACE", "VE3335 Negro", "VE3335 – 8056597827335", "L 11,500.00", "L 7,475.00", "35% DCTO", "Acetato", "Rectangular", "Negro", "Mujer", "54mm", "14mm", "140mm", "Versace es una glamurosa casa de moda italiana reconocida por sus diseños audaces, elegancia atemporal y detalles icónicos de lujo.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792627320/0VE3335-GB1-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792627328/0VE3335-GB1-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792627336/0VE3335-GB1-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792627348/0VE3335-GB1-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792627365/0VE3335-GB1-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("6", "TIFFANY & CO.", "Tf1147 Negro On Rubedo", "TF1147 – 8056597841146", "L 13,900.00", "L 9,035.00", "35% DCTO", "Metal", "Irregular", "Negro On Rubedo", "Mujer", "55mm", "17mm", "140mm", "Tiffany & Co. es una legendaria casa de joyería de lujo estadounidense, famosa por su elegancia icónica, su exclusivo color azul y sus refinados diseños oftálmicos.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792628368/0TF1147-6162-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792628446/0TF1147-6162-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792628490/0TF1147-6162-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792628520/0TF1147-6162-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792628537/0TF1147-6162-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("7", "PRADA", "Pr52Zv Rosado Dorado", "PR52ZV – 8056597852104", "L 13,700.00", "L 8,905.00", "35% DCTO", "Metal", "Irregular", "Rosado Dorado", "Mujer", "53mm", "18mm", "140mm", "Prada es una marca de lujo italiana de prestigio mundial, conocida por su sofisticación vanguardista, diseño minimalista y máxima calidad artesanal.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956384/0PR-52ZV-SVF1O1-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956492/0PR-52ZV-SVF1O1-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956529/0PR-52ZV-SVF1O1-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956549/0PR-52ZV-SVF1O1-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956569/0PR-52ZV-SVF1O1-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("8", "MIU MIU", "Mu01Vv Negro", "MU01VV – 8056597863100", "L 17,100.00", "L 11,115.00", "35% DCTO", "Acetato", "phantom", "Negro", "Mujer", "50mm", "21mm", "135mm", "Miu Miu ofrece un enfoque de la alta moda fresco, provocativo y con un fuerte carácter independiente y sofisticado.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956638/0MU-01VV-1AB1O1-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956692/0MU-01VV-1AB1O1-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956724/0MU-01VV-1AB1O1-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956742/0MU-01VV-1AB1O1-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956768/0MU-01VV-1AB1O1-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("9", "DOLCE & GABBANA", "Dg3375B Clear Camel", "DG3375B – 8056597874107", "L 14,200.00", "L 9,230.00", "35% DCTO", "Acetato", "Cat Eye", "Clear Camel", "Mujer", "55mm", "16mm", "140mm", "Dolce & Gabbana es una emblemática firma italiana de lujo conocida por su opulencia, tradición mediterránea y elegancia audaz.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956838/0DG3375B-3432-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956873/0DG3375B-3432-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956890/0DG3375B-3432-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956913/0DG3375B-3432-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956947/0DG3375B-3432-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("10", "DOLCE & GABBANA", "Dg1347 Dorado", "DG1347 – 8056597885104", "L 11,000.00", "L 7,150.00", "35% DCTO", "Metal", "Cat Eye", "Dorado", "Mujer", "54mm", "17mm", "145mm", "Dolce & Gabbana destaca por la artesanía italiana de alta gama y diseños sofisticados inspirados en la elegancia clásica.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792956989/0DG1347-02-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957028/0DG1347-02-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957050/0DG1347-02-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957072/0DG1347-02-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957088/0DG1347-02-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("11", "ARMANI EXCHANGE", "Ax3117U Shiny Clear Burgundy", "AX3117U – 8056597896101", "L 4,000.00", "L 2,600.00", "35% DCTO", "Acetato Inyectado", "phantom", "Shiny Clear Burgundy", "Mujer", "54mm", "16mm", "140mm", "Armani Exchange captura la esencia urbana y moderna con colecciones de estilo dinámico, juvenil y contemporáneo.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957236/0AX3117U-8359-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957273/0AX3117U-8359-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957293/0AX3117U-8359-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957315/0AX3117U-8359-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957340/0AX3117U-8359-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("12", "ARMANI EXCHANGE", "Ax3107U Shiny Negro", "AX3107U – 8056597907108", "L 3,600.00", "L 2,340.00", "35% DCTO", "Acetato Inyectado", "Rectangular", "Shiny Negro", "Mujer", "54mm", "16mm", "140mm", "Armani Exchange ofrece monturas versátiles y urbanas adaptadas a las últimas tendencias de la moda joven.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957399/0AX3107U-8211-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957419/0AX3107U-8211-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957467/0AX3107U-8211-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957490/0AX3107U-8211-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957512/0AX3107U-8211-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("13", "ARMANI EXCHANGE", "Ax3037 Shiny Clear Tundra", "AX3037 – 8056597918105", "L 4,400.00", "L 2,860.00", "35% DCTO", "Acetato Inyectado", "Cat Eye", "Shiny Clear Tundra", "Mujer", "53mm", "17mm", "140mm", "Armani Exchange destaca por su diseño urbano vanguardista enfocado en la comodidad y la expresión personal.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957569/0AX3037-8342-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957590/0AX3037-8342-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957609/0AX3037-8342-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957627/0AX3037-8342-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957665/0AX3037-8342-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("14", "RALPH", "Ra7141 Carey", "RA7141 – 8056597929102", "L 3,800.00", "L 2,470.00", "35% DCTO", "Acetato", "Irregular", "Carey", "Mujer", "54mm", "17mm", "145mm", "Ralph ofrece colecciones juveniles inspiradas en el estilo clásico americano con un toque moderno, fresco y colorido.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957738/0RA7141-6008-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957812/0RA7141-6008-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957855/0RA7141-6008-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957884/0RA7141-6008-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957906/0RA7141-6008-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("15", "SWAROVSKI", "Sk2056U Clear Rosa", "SK2056U – 8056597930108", "L 5,300.00", "L 3,445.00", "35% DCTO", "Acetato Inyectado", "Cat Eye", "Clear Rosa", "Mujer", "54mm", "18mm", "140mm", "Swarovski combina el brillo incomparable de sus cristales con diseños sofisticados y femeninos de alta calidad.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792957995/0SK2056U-3001-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958063/0SK2056U-3001-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958103/0SK2056U-3001-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958157/0SK2056U-3001-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958177/0SK2056U-3001-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("16", "SWAROVSKI", "Sk2046 Negro", "SK2046 – 8056597941105", "L 8,100.00", "L 5,265.00", "35% DCTO", "Acetato", "Irregular", "Negro", "Mujer", "53mm", "17mm", "145mm", "Swarovski ofrece monturas de lujo adornadas con detalles de cristales tallados con precisión milimétrica.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958245/0SK2046-1001-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958329/0SK2046-1001-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958352/0SK2046-1001-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958375/0SK2046-1001-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958396/0SK2046-1001-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("17", "RALPH", "Ra6063 Clear Rosado", "RA6063 – 8056597952102", "L 3,600.00", "L 2,340.00", "35% DCTO", "Metal", "Irregular", "Clear Rosado", "Mujer", "54mm", "17mm", "145mm", "Ralph destaca por su elegancia accesible y juvenil, ideal para el uso diario con un toque chic.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958479/0RA6063-9443-P21-shad-fr_585b0537-acdb-4760-9d77-b964a2cc28e6.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958553/0RA6063-9443-P21-shad-qt_422fa162-37fb-4ee6-8846-721d5ede259f.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958584/0RA6063-9443-P21-shad-lt_1786b7c6-15dd-4c63-9085-29babdfaf262.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958619/0RA6063-9443-P21-shad-bk_f485484c-6488-4996-a6c6-2d4ddd16e7fa.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958646/0RA6063-9443-P21-shad-cfr_25a612df-4c28-4cb2-a55a-0cd469d59354.webp"
    }));

    listaAros.add(new Aro("18", "VOGUE EYEWEAR", "Vo5703U Bordeaux", "VO5703U – 8056597963109", "L 3,100.00", "L 2,015.00", "35% DCTO", "Nylon", "Ovalado", "Bordeaux", "Mujer", "53mm", "17mm", "140mm", "Vogue Eyewear combina tendencias actuales con una gran variedad de estilos accesibles y sofisticados.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1792958701/0VO5703U-3284-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793037146/0VO5703U-3284-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793037236/0VO5703U-3284-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793037267/0VO5703U-3284-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793037295/0VO5703U-3284-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("19", "TIFFANY & CO.", "Tf2273 Havana", "TF2273D – 8056597974106", "L 13,200.00", "L 8,585.00", "35% DCTO", "Acetato", "Redondo", "Havana", "Mujer", "48mm", "20mm", "140mm", "Tiffany & Co. destaca por su icónica joyería de lujo trasladada a monturas elegantes y atemporales.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793037414/0TF2273D-8015-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793037538/0TF2273D-8015-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793037678/0TF2273D-8015-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793037702/0TF2273D-8015-P21-shad-cfr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793037414/0TF2273D-8015-P21-shad-fr.webp"
    }));

    listaAros.add(new Aro("20", "VOGUE EYEWEAR", "Vo4340 Dorado", "VO4340 – 8056597985103", "L 2,400.00", "L 1,560.00", "35% DCTO", "Metal", "Rectangular", "Dorado", "Mujer", "53mm", "18mm", "140mm", "Vogue Eyewear ofrece diseños frescos, juveniles y vanguardistas ideales para complementar cualquier look diario.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793037845/0VO4340-848-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793037981/0VO4340-848-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793038134/0VO4340-848-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793038168/0VO4340-848-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793038219/0VO4340-848-P21-shad-cfr.webp"
    }));

    // --- PRODUCTOS DE HOMBRE (21 al 40) ---
    listaAros.add(new Aro("21", "VOGUE EYEWEAR", "Vo5532 Clear Oscuro Café", "VO5532 – 8056597996100", "L 3,200.00", "L 2,080.00", "35% DCTO", "Nylon", "Cuadrado", "Clear Oscuro Café", "Hombre", "52mm", "19mm", "145mm", "Vogue Eyewear combina tendencias actuales con una gran variedad de estilos accesibles y sofisticados para hombre.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134124/0VO5532-3110-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134155/0VO5532-3110-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134155/0VO5532-3110-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134244/0VO5532-3110-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134273/0VO5532-3110-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("22", "VERSACE", "Ve3350 Negro", "VE3350 – 8056597997107", "L 11,500.00", "L 7,475.00", "35% DCTO", "Acetato", "Cuadrado", "Negro", "Hombre", "53mm", "18mm", "140mm", "Versace es una glamurosa casa de moda italiana reconocida por sus diseños audaces, elegancia atemporal y detalles icónicos.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134415/0VE3350-5360-P21-shad-fr_1.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134311/0VE3350-5360-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134347/0VE3350-5360-P21-shad-lt_1.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134379/0VE3350-5360-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134447/0VE3350-5360-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("23", "VERSACE", "Ve3314 Havana", "VE3314 – 8056597998104", "L 11,200.00", "L 7,280.00", "35% DCTO", "Acetato", "Rectangular", "Havana", "Hombre", "52mm", "20mm", "145mm", "Versace ofrece una estética de lujo sofisticada e icónica adaptada al hombre moderno.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134501/0VE3314-108-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134532/0VE3314-108-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134562/0VE3314-108-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134641/0VE3314-108-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134685/0VE3314-108-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("24", "POLO RALPH LAUREN", "Ph2263U Shiny Havana Café", "PH2263U – 8056597999101", "L 4,500.00", "L 2,925.00", "35% DCTO", "Acetato Inyectado", "Rectangular", "Shiny Havana Café", "Hombre", "53mm", "18mm", "145mm", "Polo Ralph Lauren captura el espíritu de la tradición clásica americana con un toque casual y distinguido.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134732/0PH2263U-5974-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134865/0PH2263U-5974-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134938/0PH2263U-5974-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134926/0PH2263U-5974-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793134915/0PH2263U-5974-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("25", "PRADA LINEA ROSSA", "Ps54Iv Negro Rubber", "PS54IV – 8056598000104", "L 14,000.00", "L 9,100.00", "35% DCTO", "Metal", "Rectangular", "Negro Rubber", "Hombre", "53mm", "18mm", "140mm", "Prada Linea Rossa redefine el diseño deportivo de lujo con acabados técnicos de alta calidad.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135113/0PS-54IV-DG01O1-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135099/0PS-54IV-DG01O1-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135086/0PS-54IV-DG01O1-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135073/0PS-54IV-DG01O1-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135060/0PS-54IV-DG01O1-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("26", "PRADA", "Pra09V Havana", "PRA09V – 8056598001101", "L 13,800.00", "L 8,970.00", "35% DCTO", "Acetato", "Rectangular", "Havana", "Hombre", "52mm", "18mm", "145mm", "Prada ofrece sofisticación vanguardista y diseño minimalista de máxima calidad artesanal.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135408/0PR-A09V-17N1O1-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135462/0PR-A09V-17N1O1-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135448/0PR-A09V-17N1O1-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135435/0PR-A09V-17N1O1-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135422/0PR-A09V-17N1O1-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("27", "PRADA", "Pra09V Negro", "PRA09V-BLK – 8056598002108", "L 13,800.00", "L 8,970.00", "35% DCTO", "Acetato", "Rectangular", "Negro", "Hombre", "52mm", "18mm", "145mm", "Prada combina elegancia sobria y diseño impecable para el hombre contemporáneo.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135675/0PR-A09V-16K1O1-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135662/0PR-A09V-16K1O1-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135639/0PR-A09V-16K1O1-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135625/0PR-A09V-16K1O1-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135612/0PR-A09V-16K1O1-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("28", "PRADA", "Pr01Wv Etruscan Marble", "PR01WV – 8056598003105", "L 14,100.00", "L 9,165.00", "35% DCTO", "Acetato", "Rectangular", "Etruscan Marble", "Hombre", "54mm", "18mm", "145mm", "Prada ofrece piezas únicas con acabados marmoleados exclusivos y un confort superior.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135801/0PR-01WV-11F1O1-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135788/0PR-01WV-11F1O1-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135773/0PR-01WV-11F1O1-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135760/0PR-01WV-11F1O1-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135746/0PR-01WV-11F1O1-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("29", "PRADA", "Pr05Zv Denim Tortoise", "PR05ZV – 8056598004102", "L 13,900.00", "L 9,035.00", "35% DCTO", "Acetato", "Rectangular", "Denim Tortoise", "Hombre", "53mm", "18mm", "140mm", "Prada fusiona la alta costura con monturas ergonómicas y patrones innovadores.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135937/0PR-05ZV-ZXH1O1-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135924/0PR-05ZV-ZXH1O1-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135911/0PR-05ZV-ZXH1O1-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135897/0PR-05ZV-ZXH1O1-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793135883/0PR-05ZV-ZXH1O1-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("30", "PERSOL", "Po3012V Negro", "PO3012V – 8056598005109", "L 10,500.00", "L 6,825.00", "35% DCTO", "Acetato", "Cuadrado", "Negro", "Hombre", "52mm", "18mm", "140mm", "Persol es la legendaria marca italiana de gafas célebre por su comodidad, calidad artesanal y el icónico detalle de la flecha.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136098/0PO3012V-1154-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136084/0PO3012V-1154-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136072/0PO3012V-1154-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136058/0PO3012V-1154-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136043/0PO3012V-1154-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("31", "OAKLEY", "Ox3026 Pewter", "OX3026 – 8056598006106", "L 6,200.00", "L 4,030.00", "35% DCTO", "Metal", "Cuadrado", "Pewter", "Hombre", "55mm", "17mm", "139mm", "Oakley es la marca líder en innovación tecnológica de alto rendimiento, resistencia y diseño deportivo.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136224/0OX3026-302602-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136210/0OX3026-302602-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136195/0OX3026-302602-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136181/0OX3026-302602-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136167/0OX3026-302602-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("32", "DOLCE & GABBANA", "Dg5103 Negro", "DG5103 – 8056598007103", "L 11,800.00", "L 7,670.00", "35% DCTO", "Acetato Inyectado", "Cuadrado", "Negro", "Hombre", "55mm", "17mm", "145mm", "Dolce & Gabbana aporta elegancia audaz, lujo y distinción inconfundible en cada montura.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136340/0DG5103-501-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136327/0DG5103-501-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136313/0DG5103-501-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136298/0DG5103-501-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136284/0DG5103-501-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("33", "OAKLEY", "Oo9242 Matte Black", "OO9242 – 8056598008100", "L 7,500.00", "L 4,875.00", "35% DCTO", "Acetato inyectado", "Redondo", "Matte Black", "Hombre", "52mm", "142mm", "142mm", "Oakley combina protección UV al 100% y estilo dinámico para actividades al aire libre de alto rendimiento.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136460/0OO9242-924201-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136446/0OO9242-924201-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136432/0OO9242-924201-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136418/0OO9242-924201-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136402/0OO9242-924201-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("34", "ARMANI EXCHANGE", "Ax1066 Mate Negro", "AX1066 – 8056598009107", "L 3,900.00", "L 2,535.00", "35% DCTO", "Metal", "Irregular", "Mate Negro", "Hombre", "54mm", "16mm", "145mm", "Armani Exchange ofrece estilo urbano moderno y vanguardista con materiales ligeros.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136579/0AX1066-6000-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136565/0AX1066-6000-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136551/0AX1066-6000-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136537/0AX1066-6000-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136520/0AX1066-6000-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("35", "EMPORIO ARMANI", "Ea1165 Mate Negro", "EA1165 – 8056598010103", "L 4,800.00", "L 3,120.00", "35% DCTO", "Metal", "Piloto", "Mate Negro", "Hombre", "54mm", "14mm", "145mm", "Emporio Armani encarna la elegancia relajada y el lujo accesible con diseños clásicos e innovadores.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136706/0EA1165-3001-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136691/0EA1165-3001-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136676/0EA1165-3001-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136662/0EA1165-3001-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136647/0EA1165-3001-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("36", "EMPORIO ARMANI", "Ea3147 Mate Negro", "EA3147 – 8056598011100", "L 4,200.00", "L 2,730.00", "35% DCTO", "Acetato Inyectado", "Rectangular", "Mate Negro", "Hombre", "53mm", "18mm", "142mm", "Emporio Armani ofrece monturas dinámicas de gran durabilidad y estilo contemporáneo.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136886/0EA3147-5042-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136872/0EA3147-5042-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136857/0EA3147-5042-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136842/0EA3147-5042-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136826/0EA3147-5042-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("37", "DOLCE & GABBANA", "Dg5104 Mate Negro", "DG5104 – 8056598012107", "L 11,900.00", "L 7,735.00", "35% DCTO", "Acetato Inyectado", "Cuadrado", "Mate Negro", "Hombre", "54mm", "18mm", "145mm", "Dolce & Gabbana destaca por la elegancia masculina imponente y la máxima calidad de fabricación.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136981/0DG5104-2525-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136981/0DG5104-2525-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136981/0DG5104-2525-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136980/0DG5104-2525-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793136980/0DG5104-2525-P21-shad-cfr.webp"
    }));

   listaAros.add(new Aro("38", "POLO RALPH LAUREN", "Ph2267 Negro/Carey", "PH2267 – 8056598013104", "L 4,600.00", "L 2,990.00", "35% DCTO", "Acetato", "Cuadrado", "Negro/Carey", "Hombre", "52mm", "20mm", "145mm", "Polo Ralph Lauren combina el encanto tradicional americano con un estilo moderno y versátil.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137078/0PH2267-5001-P21-shad-fr.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137078/0PH2267-5001-P21-shad-qt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137077/0PH2267-5001-P21-shad-lt.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137077/0PH2267-5001-P21-shad-bk.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137077/0PH2267-5001-P21-shad-cfr.webp"
    }));

    listaAros.add(new Aro("39", "DOLCE & GABBANA", "Dg3415 Transparente", "DG3415 – 8056598014101", "L 12,500.00", "L 8,125.00", "35% DCTO", "Acetato", "Irregular", "Transparente", "Hombre", "55mm", "20mm", "145mm", "Dolce & Gabbana aporta diseños innovadores y vanguardistas para un look masculino sofisticado.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137205/0DG3415-2525-P21-shad-fr_32066cb1-4a9d-40ac-a9f0-4d673b20f474.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137205/0DG3415-2525-P21-shad-qt_f809c498-8bea-4f42-ba90-4fbd5f2d5e22.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137204/0DG3415-2525-P21-shad-lt_900fde18-0bd1-40aa-ae43-114f69028d4a.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137203/0DG3415-2525-P21-shad-bk_167f80ca-1c0f-4f93-b58f-cfc70152e2a8.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137203/0DG3415-2525-P21-shad-cfr_fdfc43d0-8d5a-48e6-be97-9720df74ae0e.webp"
    }));

    listaAros.add(new Aro("40", "EMPORIO ARMANI", "Ea3239 Azul Mate", "EA3239 – 8056598015108", "L 4,300.00", "L 2,795.00", "35% DCTO", "Acetato", "Rectangular", "Azul Mate", "Hombre", "55mm", "17mm", "145mm", "Emporio Armani ofrece monturas elegantes y funcionales con acabados en tonos modernos.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137284/0EA3239-6344-P21-shad-fr_02b837a5-84d9-48b1-aa76-ed15e24763ea.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137283/0EA3239-6344-P21-shad-qt_5688adfe-f0b1-4cd9-bf1f-48cb2487562a.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137282/0EA3239-6344-P21-shad-lt_14354b82-cb01-48b3-b629-36ce0fdd9c25.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137282/0EA3239-6344-P21-shad-bk_bf3461cb-47a6-452f-9ba6-df24d6646ce1.webp", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793137281/0EA3239-6344-P21-shad-cfr_db8f99df-a4d5-4409-8af5-107045925200.webp"
    }));

    listaAros.add(new Aro("41", "ARMANI EXCHANGE", "Ax1069 Clear Verde", "AX1069 – 8056598016105", "L 4,100.00", "L 2,665.00", "35% DCTO", "Metal", "Rectangular", "Clear Verde", "Hombre", "56mm", "17mm", "145mm", "Armani Exchange ofrece estilo urbano moderno y vanguardista con materiales ligeros y combinaciones de colores exclusivas.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138375/020bda95-6339-4105-9e91-a151cc89a49b.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138459/6f5ff9e0-f27e-4205-9349-e6cbf4b146e9.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138498/93d30b33-d3c6-49d6-9d11-4ff70ab52722.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138528/c639c885-c13c-4cc9-9486-82bd14e7b5fd.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138554/44c9b4ec-be0e-459e-9228-120ab0f107a4.png"
    }));

    listaAros.add(new Aro("42", "RAY-BAN", "Rx0832V Azul Clear", "RX0832V – 8056598017102", "L 4,500.00", "L 2,925.00", "35% DCTO", "Acetato", "Cuadrado", "Azul Clear", "Hombre", "52mm", "21mm", "145mm", "Ray-Ban es la marca de gafas más emblemática del mundo, símbolo de autenticidad, estilo clásico y durabilidad.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138635/53184b6d-1fa3-4e77-bf93-de0832878c5c.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138664/b840bf9d-70c6-4319-8684-d0b3b847f038.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138697/b6b6e014-4ace-4a3b-8b4a-829ccee95f91.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138717/d911dea0-4bd7-481b-836f-8b8b8729a624.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138754/aea34538-4034-4c8f-8f49-40c8659964a3.png"
    }));

    listaAros.add(new Aro("43", "RAY-BAN", "Rx6517D Plata", "RX6517D – 8056598018109", "L 4,800.00", "L 3,120.00", "35% DCTO", "Metal", "Ovalado", "Plata", "Hombre", "55mm", "19mm", "145mm", "Ray-Ban combina monturas metálicas ligeras con un diseño atemporal que garantiza confort durante todo el día.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138820/cc7ce974-f221-452b-8304-232d29d9770e.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138839/71019db5-4a5b-4582-90b6-1a4fab48399e.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138878/d53c6c8b-4382-4022-8e66-be20c3ce37d5.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138900/73bfab24-8e41-4dd1-8bf0-dfff60746051.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138928/c6dac578-4991-40d8-bb18-965cb2d79a45.png"
    }));

    listaAros.add(new Aro("44", "RAY-BAN", "Rx3447V Azul Transparente", "RX3447V – 8056598019106", "L 4,600.00", "L 2,990.00", "35% DCTO", "Metal", "Redondo", "Azul Transparente", "Hombre", "50mm", "21mm", "145mm", "Ray-Ban Round ofrece un estilo clásico e icónico inspirado en la contracultura con detalles modernos.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139050/1309535c-be43-4a99-a2b6-809f168179b3.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793138975/a7018853-243a-4648-9fc3-8741b97182cf.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139098/1304e126-31a5-4425-8714-546aa0c42fe0.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139140/939aa1f5-2584-4e64-9292-883333a6f61c.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139195/97ab3527-2045-4bac-865b-42291ed29712.png"
    }));

    listaAros.add(new Aro("45", "RAY-BAN", "Rx5698 Negro", "RX5698 – 8056598020102", "L 4,400.00", "L 2,860.00", "35% DCTO", "Acetato", "Cuadrado", "Negro", "Hombre", "56mm", "14mm", "145mm", "Ray-Ban ofrece monturas amplias y robustas de acetato diseñadas para brindar máxima resistencia y estilo.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139338/0d2e5da5-4fc0-4e95-b954-5af485512d2f.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139277/648836e7-8095-4236-97ab-35358f418642.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139368/14d0165b-2ceb-47d6-80fc-3a1345aa5d32.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139389/af4870c9-e5b1-4f73-96b4-b3352573d1b9.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139419/2aaec97b-6eb9-4375-85cf-01073f902a25.png"
    }));

    listaAros.add(new Aro("46", "VERSACE", "Ve3363U Gris Clear", "VE3363U – 8056598021109", "L 11,200.00", "L 7,280.00", "35% DCTO", "Acetato Inyectado", "Rectangular", "Gris Clear", "Unisex", "50mm", "18mm", "145mm", "Versace presenta diseños versátiles y modernos aptos para cualquier estilo con acabados translúcidos de lujo.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139528/897adeac-17b0-46f6-bd32-793e2c8333a1.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139572/12bcd693-47cf-40bc-abb7-e60ddde593cd.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139631/380d27a7-e005-4867-8cd4-348b84329f6f.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139702/8bd90530-d516-486c-b09a-3594a441905a.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139767/2a034b03-6d7b-4d4b-9376-8588acb55a70.png"
    }));

    listaAros.add(new Aro("47", "RAY-BAN", "Rx0840V Clear Oscuro Azul", "RX0840V – 8056598022106", "L 4,300.00", "L 2,795.00", "35% DCTO", "propionato", "Cuadrado", "Clear Oscuro Azul", "Unisex", "51mm", "21mm", "145mm", "Ray-Ban utiliza materiales innovadores como el propionato para ofrecer monturas ultraligeras y resistentes.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139831/04986e11-855d-4982-afe6-b812941fc60b.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139852/e6c690ae-63c1-4920-a6e5-c59ab4d3bd92.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139872/cea0cc77-09ce-4e09-b90d-04c046376f68.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139903/13a64aaf-e78d-404d-b9d7-b5300841e3de.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139929/0f9f8ebe-c33d-4de7-9622-5bc79b6eca94.png"
    }));

    listaAros.add(new Aro("48", "RAY-BAN", "Rx7218 Clear Orange", "RX7218 – 8056598023103", "L 4,200.00", "L 2,730.00", "35% DCTO", "Acetato Inyectado", "Rectangular", "Clear Orange", "Unisex", "52mm", "20mm", "140mm", "Ray-Ban trae opciones coloridas y vanguardistas que destacan por su comodidad y diseño contemporáneo.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793139975/28f6c9d7-6266-409d-9c00-769eb47b2ef7.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140003/6632df48-ecc4-4685-a739-c19ae9178fd7.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140028/53184450-b0d0-4c2d-81d5-28306870738a.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140095/2b71dae7-726c-4d78-a107-39a8682c5c8e.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140122/73009da1-b7a9-4288-bc50-cee3ce73c090.png"
    }));

    listaAros.add(new Aro("49", "RAY-BAN", "Rx0316V Green On Arista", "RX0316V – 8056598024100", "L 4,900.00", "L 3,185.00", "35% DCTO", "propionato", "Cuadrado", "Green On Arista", "Unisex", "50mm", "21mm", "145mm", "Ray-Ban combina la elegancia retro con acabados metálicos y detalles de color icónicos.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140205/90b61951-8436-4cad-9e97-6f54277fb35d.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140260/2b792053-63ba-4604-82ac-b21bae353391.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140293/98434094-5ce0-42a1-a21f-8c4f1e5102f7.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140314/2210c175-572a-4e1f-aff3-d9e5865a5063.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140351/563f97d2-77c3-494e-ab73-592b8a10f1c0.png"
    }));

    listaAros.add(new Aro("50", "RAY-BAN", "Rx4451V Striped Havana", "RX4451V – 8056598025107", "L 4,400.00", "L 2,860.00", "35% DCTO", "Nylon", "Irregular", "Striped Havana", "Unisex", "50mm", "20mm", "145mm", "Ray-Ban ofrece patrones texturizados únicos como Striped Havana para quienes buscan un estilo distintivo.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140450/3cd183e2-03f3-480b-931c-c06db3ebeb2e.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140496/229e7bbf-eb3c-492b-9a22-99fbc994973e.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140553/a74f041b-9d3d-41f1-bf1f-29c6aaa57b60.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140597/6f1ac480-01b7-4b94-9f23-16dbf7e1f428.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140653/3646f677-4684-47bd-8d15-88099971964d.png"
    }));

    listaAros.add(new Aro("51", "RAY-BAN JR", "Ry9097V Negro", "RY9097V – 8056598027101", "L 3,100.00", "L 2,015.00", "35% DCTO", "Nylon", "Irregular", "Negro", "Niños", "46mm", "16mm", "130mm", "Ray-Ban Junior combina la icónica estética de la marca con materiales resistentes y ligeros para niños.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140964/ccfabeda-fe4b-4842-abe3-f79dc80f52ce.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140989/69395d50-ddc7-4a03-8f95-2e9d6fcde80d.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793141013/823a634f-8007-45ca-8c49-29014d129294.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793141042/97792813-c10f-4bee-a614-39d29ad4173f.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793141075/9a9f0ba1-5f9c-40d6-918c-c001e4406e29.png"
    }));

    listaAros.add(new Aro("52", "RAY-BAN JR", "Ry1632 Fucsia", "RY1632 – 8056598028108", "L 3,000.00", "L 1,950.00", "35% DCTO", "Acetato inyectado", "Irregular", "Fucsia", "Niños", "46mm", "16mm", "130mm", "Ray-Ban Junior ofrece colores divertidos y diseños ergonómicos pensados para el uso diario infantil.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793141123/cb555e7a-72d4-4b46-b448-eb9ea371bf5f.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793141160/7839af1f-f386-4a8b-85b1-b6f5b3c3d2d3.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793141184/4d311eec-a643-4d82-96cd-422c776d4c97.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793141210/134a62e5-b19e-4ec3-9b7c-76295bfb5e2a.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793141287/9a462484-77cd-47a7-8845-2cc74288ed43.png"
    }));

    listaAros.add(new Aro("53", "RAY-BAN JR", "Ry9097V Clear Morado", "RY9097V-PUR – 8056598029105", "L 3,200.00", "L 2,080.00", "35% DCTO", "Acetato", "Irregular", "Clear Morado", "Niños", "46mm", "16mm", "130mm", "Ray-Ban Junior proporciona monturas juveniles con alta durabilidad y estilo moderno para niños.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793141358/f3186f09-216a-4615-a053-7af6c19617dc.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793141388/d3d3a76e-5802-4bf8-9552-bf06eb3b515d.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793141415/4d04e34a-06d1-4b5a-a690-d50044d9db89.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793141486/63c1dae3-efd9-4b8e-82ae-f93f7d9cfda7.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793141515/9ba96102-0ca5-4203-bf60-779decc12612.png"
    }));

    listaAros.add(new Aro("54", "RAY-BAN JR", "Ry1633 Azul", "RY1633 – 8056598031108", "L 3,100.00", "L 2,015.00", "35% DCTO", "Acetato inyectado", "Irregular", "Azul", "Niños", "46mm", "16mm", "130mm", "Ray-Ban Junior ofrece monturas divertidas y resistentes diseñadas especialmente para la comodidad de los niños.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140748/107ba40b-0af1-4230-9843-7b4ec3a9a31a.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140773/9a61cc1a-6578-4a35-80d1-1a9d1ed27fb0.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140800/9418b8da-a59d-4b25-9832-2c203fe66ce3.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140824/1e573f41-6a61-4e04-af22-3a2a765aebf5.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793140852/d2dcdc11-0714-40d2-98e0-41a71ef968ab.png"
    }));

    listaAros.add(new Aro("55", "RAY-BAN JR", "Ry1631 Azul Oscuro", "RY1631 – 8056598026104", "L 3,000.00", "L 1,950.00", "35% DCTO", "Acetato inyectado", "Irregular", "Azul Oscuro", "Niños", "45mm", "16mm", "130mm", "Ray-Ban Junior diseña monturas seguras, flexibles y cómodas adaptadas especialmente para los más pequeños.", new String[]{
        "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793142091/3210ca9d-442c-4968-89ac-438657095e5b.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793142160/d4cd7cf8-0bf9-4d94-92de-db76ee6f27d0.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793142195/17089f04-8747-44ee-85d8-bad663eb7b44.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793142253/56da6cef-de91-48b4-add9-1b244a14e277.png", "https://res.cloudinary.com/zrb1ftq4/image/upload/v1793142286/ce7a8923-0870-4549-b39f-312cd2d75edb.png"
    }));

   
    int cantMujer = 0, cantHombre = 0, cantUnisex = 0, cantNinos = 0;
    for (Aro a : listaAros) {
        if ("Mujer".equalsIgnoreCase(a.genero)) cantMujer++;
        else if ("Hombre".equalsIgnoreCase(a.genero)) cantHombre++;
        else if ("Unisex".equalsIgnoreCase(a.genero)) cantUnisex++;
        else if ("Niños".equalsIgnoreCase(a.genero)) cantNinos++;
    }
    int totalProductos = listaAros.size();
%>

<section id="catalogo" class="py-14 bg-slate-100/70 font-sans">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        
        <!-- ENCABEZADO ESTILO OFICIAL -->
        <div class="mb-6 space-y-2">
            <p class="text-xs text-slate-500 font-medium tracking-wide">Inicio / Aros Oftálmicos</p>
            <h2 class="text-3xl sm:text-4xl font-serif text-slate-900 tracking-wide font-normal">AROS OFTÁLMICOS</h2>
        </div>

        <!-- BARRA DE FILTRO ESTILO E-COMMERCE CON CHIP DE FILTRO ACTIVO -->
        <div class="border-t border-b border-slate-200 py-3.5 mb-8 flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
            
            <!-- CONTADOR Y ETIQUETA ACTIVA (CHIP) -->
            <div class="flex items-center flex-wrap gap-3 text-sm text-slate-700">
                <span id="contadorResultados"><%= totalProductos %> productos de un total de <%= totalProductos %></span>
                
                <!-- CHIP DE FILTRO ACTIVO (OCULTO POR DEFECTO HASTA QUE SE FILTRE) -->
                <div id="chipFiltro" class="hidden items-center bg-white border border-slate-300 rounded-full px-3 py-1 text-xs shadow-sm">
                    <span id="textoChipFiltro" class="font-medium text-slate-800 mr-2">Género: </span>
                    <button type="button" onclick="limpiarFiltro()" class="text-slate-400 hover:text-slate-700 font-bold ml-1 cursor-pointer">&times; Eliminar</button>
                </div>
            </div>

            <!-- BOTONES DE ORDENAR Y FILTRAR DESPLEGABLE -->
            <div class="flex items-center space-x-4 w-full sm:w-auto justify-between sm:justify-end">
                <div class="text-xs text-slate-500 flex items-center gap-1 cursor-pointer hover:text-slate-800">
                    <span>Ordenar por: Novedades</span>
                    <span class="text-xs">&#9662;</span>
                </div>
                
                <!-- BOTÓN PRINCIPAL PARA ABRIR EL MENÚ DE FILTROS -->
                <button type="button" onclick="toggleMenuFiltros()" class="flex items-center gap-2 text-xs font-semibold text-slate-800 border border-slate-300 bg-white px-3.5 py-2 rounded-lg hover:bg-slate-50 transition-all cursor-pointer shadow-sm">
                    <svg class="w-4 h-4 text-slate-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 4a1 1 0 011-1h16a1 1 0 011 1v2.586a1 1 0 01-.293.707l-6.414 6.414a1 1 0 00-.293.707V17l-4 4v-6.586a1 1 0 00-.293-.707L3.293 7.293A1 1 0 013 6.586V4z"></path></svg>
                    <span>Filtrar</span>
                </button>
            </div>
        </div>

       
        <div id="menuFiltrosDesplegable" class="hidden mb-8 bg-white border border-slate-200 rounded-xl p-5 shadow-md transition-all">
            <div class="flex justify-between items-center pb-3 border-b border-slate-100 mb-4">
                <h3 class="text-sm font-bold text-slate-800 uppercase tracking-wider">Filtrar por Categoría / Género</h3>
                <button type="button" onclick="toggleMenuFiltros()" class="text-slate-400 hover:text-slate-700 text-lg font-bold">&times;</button>
            </div>
            <div class="grid grid-cols-2 sm:grid-cols-4 gap-3">
                <button type="button" onclick="aplicarFiltro('Mujer', this)" class="btn-categoria flex justify-between items-center p-3 rounded-lg border border-slate-200 hover:border-slate-900 bg-slate-50/50 hover:bg-slate-100 transition-all text-left">
                    <span class="text-xs font-semibold text-slate-800">Mujeres</span>
                    <span class="bg-slate-200 text-slate-700 text-[10px] font-bold px-2 py-0.5 rounded-full"><%= cantMujer %></span>
                </button>
                <button type="button" onclick="aplicarFiltro('Hombre', this)" class="btn-categoria flex justify-between items-center p-3 rounded-lg border border-slate-200 hover:border-slate-900 bg-slate-50/50 hover:bg-slate-100 transition-all text-left">
                    <span class="text-xs font-semibold text-slate-800">Hombres</span>
                    <span class="bg-slate-200 text-slate-700 text-[10px] font-bold px-2 py-0.5 rounded-full"><%= cantHombre %></span>
                </button>
                <button type="button" onclick="aplicarFiltro('Unisex', this)" class="btn-categoria flex justify-between items-center p-3 rounded-lg border border-slate-200 hover:border-slate-900 bg-slate-50/50 hover:bg-slate-100 transition-all text-left">
                    <span class="text-xs font-semibold text-slate-800">Unisex</span>
                    <span class="bg-slate-200 text-slate-700 text-[10px] font-bold px-2 py-0.5 rounded-full"><%= cantUnisex %></span>
                </button>
                <button type="button" onclick="aplicarFiltro('Niños', this)" class="btn-categoria flex justify-between items-center p-3 rounded-lg border border-slate-200 hover:border-slate-900 bg-slate-50/50 hover:bg-slate-100 transition-all text-left">
                    <span class="text-xs font-semibold text-slate-800">Niños</span>
                    <span class="bg-slate-200 text-slate-700 text-[10px] font-bold px-2 py-0.5 rounded-full"><%= cantNinos %></span>
                </button>
            </div>
        </div>

        
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6" id="contenedorAros">
            <% for(Aro aro : listaAros) { %>
            <div class="tarjeta-aro bg-white rounded-xl border border-slate-200/80 p-4 shadow-sm hover:shadow-md transition-all flex flex-col justify-between" 
                 data-genero="<%= aro.genero %>">
                <div>
                    <button type="button" onclick="abrirGaleriaAro('<%= aro.id %>')" class="w-full text-left cursor-pointer group mb-3">
                        <div class="h-48 bg-slate-50/50 rounded-lg flex items-center justify-center overflow-hidden relative shadow-inner">
                            <img src="<%= aro.imagenes[1] %>" alt="" class="w-full h-full object-contain absolute inset-0 transition-opacity duration-300 group-hover:opacity-0 p-3" loading="lazy">
                            <img src="<%= aro.imagenes[0] %>" alt="" class="w-full h-full object-contain absolute inset-0 transition-opacity duration-300 opacity-0 group-hover:opacity-100 p-3" loading="lazy">
                        </div>
                    </button>
                    <div class="space-y-1">
                        <div class="flex justify-between items-center">
                            <span class="text-[11px] font-bold uppercase tracking-wider text-slate-500"><%= aro.marca %></span>
                            <span class="bg-slate-900 text-white text-[10px] font-bold px-1.5 py-0.5 rounded"><%= aro.descuento %></span>
                        </div>
                        <h4 class="text-sm font-medium text-slate-800"><%= aro.modelo %></h4>
                    </div>
                </div>
                <div class="flex justify-between items-center pt-3 mt-2 border-t border-slate-100">
                    <div class="flex items-center space-x-2 flex-wrap">
                        <span class="text-xs text-slate-400 line-through"><%= aro.precioOriginal %></span>
                        <span class="text-sm font-bold text-slate-900"><%= aro.precioDescuento %></span>
                    </div>
                    <a href="login.jsp" class="text-xs bg-slate-100 hover:bg-slate-200 text-slate-700 px-3 py-1.5 rounded-md font-medium transition-colors">Apartar</a>
                </div>
            </div>
            <% } %>
        </div>

       
        <% for(Aro aro : listaAros) { %>
        <div id="galeriaAro<%= aro.id %>" class="fixed inset-0 z-50 hidden items-center justify-center bg-black/70 p-4 modal-aro-container" onclick="cerrarGaleriaAro(event, '<%= aro.id %>')">
            <div class="bg-white w-full max-w-4xl rounded-2xl p-4 sm:p-6 relative max-h-[90vh] overflow-y-auto font-sans" onclick="event.stopPropagation()">
                <button type="button" onclick="cerrarGaleriaAro(null, '<%= aro.id %>')" class="absolute top-3 right-4 text-3xl text-slate-500 hover:text-slate-900 z-10">&times;</button>
                <div class="pr-8 mb-4">
                    <p class="text-base sm:text-lg font-serif text-slate-800 tracking-wide font-medium">Inicio / Aros Oftálmicos <%= aro.marca %> <%= aro.modelo %></p>
                    <p class="text-sm text-slate-400 mt-0.5"><%= aro.sku %></p>
                </div>
                <div class="mt-2 h-64 sm:h-96 bg-white border border-slate-100 rounded-xl flex items-center justify-center overflow-hidden">
                    <img id="imagenPrincipalAro<%= aro.id %>" src="<%= aro.imagenes[0] %>" alt="" class="w-full h-full object-contain">
                </div>
                <div class="grid grid-cols-5 gap-2 mt-4" id="miniaturasAro<%= aro.id %>">
                    <% for(int i = 0; i < aro.imagenes.length; i++) { %>
                        <button type="button" onclick="cambiarImagenAro('<%= aro.id %>', <%= i %>)" class="border-2 <%= i == 0 ? "border-sky-500" : "border-slate-200 hover:border-sky-500" %> rounded-lg p-1 h-20 sm:h-24 overflow-hidden">
                            <img src="<%= aro.imagenes[i] %>" alt="" class="w-full h-full object-contain">
                        </button>
                    <% } %>
                </div>
                <div class="mt-6 border-t border-slate-200 pt-5 space-y-4">
                    <div class="space-y-3 text-base text-slate-800 font-sans">
                        <div class="pb-3 border-b border-slate-200">
                            <p class="font-semibold text-slate-900">Satisfacción garantizada</p>
                            <p class="text-slate-600 text-base mt-0.5">Limpieza y ajuste gratis en todas nuestras tiendas.</p>
                        </div>
                        <div class="pb-3 border-b border-slate-200">
                            <p class="font-semibold text-slate-900">Garantía óptica y garantía estética</p>
                        </div>
                        <div class="pb-3 border-b border-slate-200">
                            <p class="font-medium text-slate-800">Envío gratis en compras mayores a L 1,000.</p>
                        </div>
                    </div>
                    <div class="flex flex-wrap justify-between items-center pt-2">
                        <span class="text-sm font-bold uppercase tracking-wider text-slate-700">PRECIO:</span>
                        <div class="text-right">
                            <div class="flex items-center space-x-2">
                                <span class="text-lg font-bold text-slate-900"><%= aro.precioDescuento %></span>
                                <span class="bg-slate-900 text-white text-xs font-bold px-1.5 py-0.5 rounded"><%= aro.descuento %></span>
                            </div>
                            <span class="text-sm text-slate-400 line-through block mt-0.5"><%= aro.precioOriginal %></span>
                        </div>
                    </div>
                    <div class="space-y-2 pt-3">
                        <a href="login.jsp" class="block w-full text-center bg-slate-700 hover:bg-slate-800 text-white text-sm font-bold tracking-wider py-3 rounded-xl transition-colors uppercase">Agregar Lentes</a>
                        <a href="login.jsp" class="block w-full text-center border border-slate-300 hover:bg-slate-50 text-slate-700 text-sm font-bold tracking-wider py-2.5 rounded-xl transition-colors uppercase">Agregar Solo Aros</a>
                    </div>
                </div>
                <div class="mt-8 border-t border-slate-200 pt-6 pb-6">
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-6 items-start">
                        <div><h3 class="text-xl font-serif text-slate-800 tracking-wide">Acerca de los aros</h3></div>
                        <div class="md:col-span-2 space-y-6">
                            <div class="border-b border-slate-200 pb-4">
                                <button type="button" onclick="toggleSeccion('<%= aro.id %>', 'detalles', this)" class="w-full flex justify-between items-center mb-3 text-left focus:outline-none cursor-pointer">
                                    <span class="text-base font-semibold text-slate-800">Detalles de los aros</span>
                                    <span class="flecha-icono text-sm text-slate-400 font-bold transition-transform duration-200">▲</span>
                                </button>
                                <div id="detallesAro<%= aro.id %>" class="grid grid-cols-2 sm:grid-cols-4 gap-4 mt-3 text-base">
                                    <div><span class="block text-slate-500 mb-0.5">Material:</span><span class="text-slate-900 font-medium"><%= aro.material %></span></div>
                                    <div><span class="block text-slate-500 mb-0.5">Forma:</span><span class="text-slate-900 font-medium"><%= aro.forma %></span></div>
                                    <div><span class="block text-slate-500 mb-0.5">Color:</span><span class="text-slate-900 font-medium"><%= aro.color %></span></div>
                                    <div><span class="block text-slate-500 mb-0.5">Género:</span><span class="text-slate-900 font-medium"><%= aro.genero %></span></div>
                                </div>
                            </div>
                            <div class="border-b border-slate-200 pb-4">
                                <button type="button" onclick="toggleSeccion('<%= aro.id %>', 'medidas', this)" class="w-full flex justify-between items-center mb-3 text-left focus:outline-none cursor-pointer">
                                    <span class="text-base font-semibold text-slate-800">Medidas de los aros</span>
                                    <span class="flecha-icono text-sm text-slate-400 font-bold transition-transform duration-200">▲</span>
                                </button>
                                <div id="medidasAro<%= aro.id %>" class="grid grid-cols-3 gap-4 text-center mt-3 text-base">
                                    <div><span class="block text-slate-500 mb-1">Tamaño del cristal:</span><span class="text-slate-900 font-semibold text-base"><%= aro.tamanoCristal %></span></div>
                                    <div><span class="block text-slate-500 mb-1">Ancho del puente:</span><span class="text-slate-900 font-semibold text-base"><%= aro.anchoPuente %></span></div>
                                    <div><span class="block text-slate-500 mb-1">Largo de la varilla:</span><span class="text-slate-900 font-semibold text-base"><%= aro.largoVarilla %></span></div>
                                </div>
                            </div>
                            <div class="border-b border-slate-200 pb-4">
                                <button type="button" onclick="toggleSeccion('<%= aro.id %>', 'acerca', this)" class="w-full flex justify-between items-center mb-3 text-left focus:outline-none cursor-pointer">
                                    <span class="text-base font-semibold text-slate-800">Acerca de la marca</span>
                                    <span class="flecha-icono text-sm text-slate-400 font-bold transition-transform duration-200">▲</span>
                                </button>
                                <div id="acercaAro<%= aro.id %>" class="mt-3 text-base text-slate-600 leading-relaxed">
                                    <p><%= aro.acercaDe %></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

               
                <%
                    List<Aro> listaAleatoria = new ArrayList<>(listaAros);
                    listaAleatoria.removeIf(a -> a.id.equals(aro.id));
                    Collections.shuffle(listaAleatoria);
                    int cantidadRecomendados = Math.min(3, listaAleatoria.size());
                %>
                <div class="mt-8 border-t border-slate-200 pt-6">
                    <h3 class="text-xl font-serif text-slate-800 tracking-wide mb-4">También te puede interesar</h3>
                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
                        <% for(int r = 0; r < cantidadRecomendados; r++) { 
                            Aro recomendado = listaAleatoria.get(r);
                        %>
                        <div class="bg-white rounded-xl border border-slate-200/80 p-3 shadow-sm hover:shadow-md transition-all flex flex-col justify-between">
                            <div>
                                <button type="button" onclick="abrirGaleriaAro('<%= recomendado.id %>')" class="w-full text-left cursor-pointer group mb-2">
                                    <div class="h-36 bg-slate-50/50 rounded-lg flex items-center justify-center overflow-hidden relative shadow-inner">
                                        <img src="<%= recomendado.imagenes[1] %>" alt="" class="w-full h-full object-contain absolute inset-0 transition-opacity duration-300 group-hover:opacity-0 p-2" loading="lazy">
                                        <img src="<%= recomendado.imagenes[0] %>" alt="" class="w-full h-full object-contain absolute inset-0 transition-opacity duration-300 opacity-0 group-hover:opacity-100 p-2" loading="lazy">
                                    </div>
                                </button>
                                <div class="space-y-0.5">
                                    <div class="flex justify-between items-center">
                                        <span class="text-[10px] font-bold uppercase tracking-wider text-slate-500"><%= recomendado.marca %></span>
                                        <span class="bg-slate-900 text-white text-[9px] font-bold px-1 py-0.5 rounded"><%= recomendado.descuento %></span>
                                    </div>
                                    <h4 class="text-xs font-medium text-slate-800 truncate"><%= recomendado.modelo %></h4>
                                </div>
                            </div>
                            <div class="flex justify-between items-center pt-2 mt-2 border-t border-slate-100">
                                <span class="text-xs font-bold text-slate-900"><%= recomendado.precioDescuento %></span>
                                <button type="button" onclick="abrirGaleriaAro('<%= recomendado.id %>')" class="text-[11px] bg-slate-100 hover:bg-slate-200 text-slate-700 px-2.5 py-1 rounded-md font-medium transition-colors">Ver</button>
                            </div>
                        </div>
                        <% } %>
                    </div>
                </div>

            </div>
        </div>
        <% } %>

    </div>
</section>


<script>
    const totalGeneral = <%= totalProductos %>;

    const imagenesAros = {
        <% for(int i = 0; i < listaAros.size(); i++) { 
           Aro a = listaAros.get(i); %>
            "<%= a.id %>": [
                <% for(int j = 0; j < a.imagenes.length; j++) { %>
                    "<%= a.imagenes[j] %>"<%= (j < a.imagenes.length - 1) ? "," : "" %>
                <% } %>
            ]<%= (i < listaAros.size() - 1) ? "," : "" %>
        <% } %>
    };

    function toggleMenuFiltros() {
        const menu = document.getElementById('menuFiltrosDesplegable');
        if (menu.classList.contains('hidden')) {
            menu.classList.remove('hidden');
        } else {
            menu.classList.add('hidden');
        }
    }

    function aplicarFiltro(categoriaSeleccionada, btn) {
        const tarjetas = document.querySelectorAll('.tarjeta-aro');
        let contadorVisibles = 0;

        tarjetas.forEach(tarjeta => {
            const generoAro = tarjeta.getAttribute('data-genero');
            if (generoAro.toLowerCase() === categoriaSeleccionada.toLowerCase()) {
                tarjeta.style.display = 'flex';
                contadorVisibles++;
            } else {
                tarjeta.style.display = 'none';
            }
        });

       
        document.getElementById('contadorResultados').innerText = contadorVisibles + " productos de un total de " + totalGeneral;

       
        const chip = document.getElementById('chipFiltro');
        const textoChip = document.getElementById('textoChipFiltro');
        textoChip.innerText = "Género: " + categoriaSeleccionada;
        chip.classList.remove('hidden');
        chip.classList.add('flex');

      
        document.getElementById('menuFiltrosDesplegable').classList.add('hidden');
    }

    function limpiarFiltro() {
        const tarjetas = document.querySelectorAll('.tarjeta-aro');
        tarjetas.forEach(tarjeta => {
            tarjeta.style.display = 'flex';
        });

       
        document.getElementById('contadorResultados').innerText = totalGeneral + " productos de un total de " + totalGeneral;

     
        const chip = document.getElementById('chipFiltro');
        chip.classList.remove('flex');
        chip.classList.add('hidden');
    }

    function abrirGaleriaAro(id) {
        document.querySelectorAll('.modal-aro-container').forEach(modal => {
            modal.classList.add('hidden');
            modal.classList.remove('flex');
        });

        const modal = document.getElementById('galeriaAro' + id);
        if (modal) {
            modal.classList.remove('hidden');
            modal.classList.add('flex');
            document.body.style.overflow = 'hidden';
            modal.querySelector('div > div').scrollTop = 0;
        }
    }

    function cerrarGaleriaAro(event, id) {
        if (!event || event.target.id === 'galeriaAro' + id || event.currentTarget.tagName === 'BUTTON') {
            const modal = document.getElementById('galeriaAro' + id);
            if (modal) {
                modal.classList.add('hidden');
                modal.classList.remove('flex');
                document.body.style.overflow = 'auto';
            }
        }
    }

    function cambiarImagenAro(id, index) {
        document.getElementById('imagenPrincipalAro' + id).src = imagenesAros[id][index];
        const miniaturas = document.querySelectorAll('#miniaturasAro' + id + ' button');
        miniaturas.forEach((btn, i) => {
            if (i === index) {
                btn.className = "border-2 border-sky-500 rounded-lg p-1 h-20 sm:h-24 overflow-hidden";
            } else {
                btn.className = "border-2 border-slate-200 hover:border-sky-500 rounded-lg p-1 h-20 sm:h-24 overflow-hidden";
            }
        });
    }

    function toggleSeccion(id, seccion, btn) {
        const contenido = document.getElementById(seccion + 'Aro' + id);
        const flecha = btn.querySelector('.flecha-icono');
        if (contenido.classList.contains('hidden')) {
            contenido.classList.remove('hidden');
            flecha.innerText = '▲';
        } else {
            contenido.classList.add('hidden');
            flecha.innerText = '▼';
        }
    }
</script>