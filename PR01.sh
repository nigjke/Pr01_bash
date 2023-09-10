echo "************ Задание 1 *********************"
echo "Сколько процентов составляет площадь поверхности плотно вложенного в цилиндр шара диаметром R от площади поверхности цилиндра ?"

diameter=10
height=50
sphere_area=$(echo "4 * 3.14159 * ($diameter/2)^2" | bc)
cylinder_area=$(echo "2 * 3.14159 * ($diameter/2) * $height" | bc)
percentage=$(echo "($sphere_area / $cylinder_area) * 100" | bc)
echo "Площадь поверхности шара составляет $percentage% от площади поверхности цилиндра"

echo "************ Задание 2 *********************"
echo "Найти периметр и площадь равнобедренной трапеции с основаниями a и b (a > b) и углом alpha при большем основании (угол дан в градусах)."

a=10
b=12
alpha=20
alpha_rad=$(echo "$alpha * (3.14159/180)" | bc -l)
h=$(echo "scale=2; (a - b) * sin($alpha_rad) / 2" | bc -l)
perimeter=$(echo "scale=2; a + b + 2 * sqrt(h^2 + ((a - b) / 2)^2)" | bc -l)
area=$(echo "scale=2; (a + b) * h / 2" | bc -l)
echo "Периметр трапеции: $perimeter"
echo "Площадь трапеции: $area"

echo "************ Задание 3 *********************"
echo "Дано количество часов, минут и секунд с начала суток. Вычислить количество секунд с начала суток. Сколько процентов от общей продолжительности суток прошло ?"

hours=21
minutes=56
seconds=21
total_seconds=$((hours * 3600 + minutes * 60 + seconds))
total_day_seconds=$((24 * 60 * 60))
percentage=$((total_seconds * 100 / total_day_seconds))
echo "Количество секунд c начала суток: $total_seconds"
echo "Прошло $percentage% от общей продолжительности суток"