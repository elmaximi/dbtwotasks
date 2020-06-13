/*vista 1*/
use classicmodels;
create view `view_producto_mas_vendido` as
select products.productName as Nombre_Producto, products.productLine as 
Nombre_De_Linia_Producto, sum(orderdetails.quantityOrdered*orderdetails.priceEach) as VentaTotal,
count(orders.customerNumber) Clientes_Distintos
from products
inner join orderdetails on products.productCode=orderdetails.productCode 
inner join orders on orders.orderNumber=orderdetails.orderNumber

group by products.productCode
order by VentaTotal desc
limit 1;
select * from view_producto_mas_vendido;

/*vista 2*/
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`%` 
    SQL SECURITY DEFINER
VIEW `classicmodels`.`view_cliente_mayor_cantidad_compras` AS
    SELECT 
         `customers`.`customerName` AS `Nombre_Del_Cliente`, COUNT(`orders`.`customerNumber`) AS `Cantidad_Pedidos`,
        SUM(`orderdetails`.`quantityOrdered` * `orderdetails`.`priceEach`) AS `Valor_Pagado_Por_Total_Compra`,
        COUNT(DISTINCT `orderdetails`.`productCode`) AS `Cantidad_De_Productos_Diferentes`
    FROM
        ((`classicmodels`.`customers`
        JOIN `classicmodels`.`orders`)
        JOIN `classicmodels`.`orderdetails`)
    WHERE
        `customers`.`customerNumber` = `orders`.`customerNumber`
            AND `orders`.`orderNumber` = `orderdetails`.`orderNumber`
            AND `orders`.`orderDate` BETWEEN '2003-01-06' and '2005-05-30' 
    GROUP BY `customers`.`customerNumber`
    ORDER BY COUNT(`orders`.`customerNumber`) DESC
    LIMIT 1;

SELECT * FROM view_cliente_mayor_cantidad_compras;

/*procedimientos*/
create procedure Ordenar_un_Producto()
select * from products where productLine='Motorcycles';

create procedure Ordenar_una_Moto()
select * from products where productName='1996 Moto Guzzi 1100i';