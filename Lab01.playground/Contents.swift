import UIKit
import Foundation

//Сегеда Никита

/*
 Сегеда Никита
 */

print("Сегеда Никита")

var first:Int = 9;
print(first)

var second:Double = 4.5;
var sird:Float = 6.75;
print(second, sird)

var string:String = "Я Сегеда Никита"
print(string + " Петрович")

second = Double(first) - Double(sird);
print(second)

first *= 2;
print(first)

sird /= 2;
print(sird)
print("--------------------")



//Управляющие конструкции
var a:Float = 2.0
var b:Float = 4.0
var c:Float = 1.0

var d = b*b - 4*a*c;
print("d = ", d)

if d < 0 {
    print("Нет корней")
}
else {
    let x1:Float = (-b - sqrt(d)) / (2.0 * a)
    let x2:Float = (-b + sqrt(d)) / (2.0 * a)
    print("x1=", x1, "x2=",x2)
}
print("--------------------")
    


/*
На повышенную оценку
 */
struct Point {
    let x: Double
    let y: Double
}

struct Rectangle {
    let lowerLeft: Point
    let upperRight: Point
    
    func contains(_ point: Point) -> Bool {
        return point.x >= lowerLeft.x && point.x <= upperRight.x && point.y >= lowerLeft.y && point.y <= upperRight.y
    }
}

let rectangle = Rectangle(lowerLeft: Point(x: 0.0, y: 0.0), upperRight: Point(x: 2.0, y: 2.0))

let pointsToTest = [
    Point(x: 1.0, y: 1.0), // Внутри прямоугольника
    Point(x: 0.0, y: 0.0), // на нижней левой точке
    Point(x: 2.0, y: 2.0), // на верхней правой точке
    Point(x: -1.0, y: -1.0), // ниже и слева от прямоугольника
    Point(x: 3.0, y: 3.0) // выше и справа от прямоугольника
]

for point in pointsToTest {
    if rectangle.contains(point) {
        print("Точка с координатами (\(point.x), \(point.y)) находится внутри прямоугольника.")
    } else {
        print("Точка с координатами (\(point.x), \(point.y)) не попадает в прямоугольник.")
    }
}
print("--------------------")



//Циклы и массивы
for i in 1...4 {
    print(i)
}

var array:[String] = ["item1", "item2"]
print(array)

array.append("item3")
array.append("item4")
for i in 0...(array.count - 1) {
    print(i, array[i])
}

array.remove(at: 1)
for s in array {
    print(s)
}
print("--------------------")



var array2:[Int] = []
for i in 1...4 {
    array2.append(Int.random(in: -10...10))
}
print("Исходный массив: \(array2)")

// Поиск минимума и максимума в массиве
var min = array2[0]
var max = array2[0]

for i in array2 {
    if i < min {
        min = i
    }
    if i > max {
        max = i
    }
}
print("Минимум: \(min)")
print("Максимум: \(max)")



/*
На повышенную оценку
 */
let average = Double(array2.reduce(0, +)) / Double(array2.count)
print("Среднее арифметическое: \(average)")

// Сортировка массива с использованием встроенной функции sort
var sortedArray1 = array2.sorted()
print("Массив, отсортированный с использованием sort: \(sortedArray1)")

// Сортировка массива с использованием алгоритма сортировки (например, пузырьковой сортировки)
var sortedArray2 = array2
for i in 0..<sortedArray2.count {
    for j in 0..<(sortedArray2.count - 1 - i) {
        if sortedArray2[j] > sortedArray2[j + 1] {
            let temp = sortedArray2[j]
            sortedArray2[j] = sortedArray2[j + 1]
            sortedArray2[j + 1] = temp
        }
    }
}
print("Массив, отсортированный с использованием пузырьковой сортировки: \(sortedArray2)")
print("--------------------")



//Функции
func test() {
    print("Сегеда Никита")
}

func test2(a:Int, b:Int) {
    print(a,b)
}

func sum(a:Int, b:Int) -> Int {
    return a+b
}

test()
test2(a: 4, b:2)
print(sum(a:2, b:6))
print("--------------------")



/*
На повышенную оценку
 */
// Функция для проверки попадания точки в окружность
func isPointInCircle(pointX: Double, pointY: Double, centerX: Double, centerY: Double, radius: Double) -> Bool {
    let distance = sqrt(pow(pointX - centerX, 2) + pow(pointY - centerY, 2))
    return distance <= radius
}

// Координаты центра окружности и радиус
let circleCenterX = 2.0
let circleCenterY = 2.0
let circleRadius = 3.0

// Координаты точки
let pointX = 4.0
let pointY = 3.0

// Вызов функции и проверка попадания точки в окружность
if isPointInCircle(pointX: pointX, pointY: pointY, centerX: circleCenterX, centerY: circleCenterY, radius: circleRadius) {
    print("Точка находится внутри окружности.")
} else {
    print("Точка находится вне окружности.")
}
print("--------------------")



/*
На повышенную оценку
 */
// Функция для создания массива случайных чисел в заданном диапазоне и с заданным количеством элементов
func generateRandomArray(minValue: Int, maxValue: Int, count: Int) -> [Int] {
    var randomArray = [Int]()
    for _ in 0..<count {
        let randomValue = Int.random(in: minValue...maxValue)
        randomArray.append(randomValue)
    }
    return randomArray
}

// Создание двух массивов случайных чисел
let minValue = 1
let maxValue = 100
let arrayCount = 5 //количество элементов

let randomArray1 = generateRandomArray(minValue: minValue, maxValue: maxValue, count: arrayCount)
let randomArray2 = generateRandomArray(minValue: minValue, maxValue: maxValue, count: arrayCount)

print("Первый массив случайных чисел: \(randomArray1)")
print("Второй массив случайных чисел: \(randomArray2)")
print("--------------------")



/*
На повышенную оценку
 */
// Функция для вычисления средне-квадратичного отклонения (MSE) между двумя массивами
func calculateMSE(array11: [Int], array22: [Int]) -> Double {
    // Проверка на одинаковую длину массивов
    if array11.count != array22.count {
        fatalError("Массивы должны иметь одинаковую длину для вычисления MSE.")
    }
    
    let n = Double(array11.count)
    
    // Вычисление суммы квадратов разностей элементов
    let sumOfSquaredDifferences = zip(array11, array22).reduce(0.0) { (sum, pair) in
        let diff = Double(pair.0 - pair.1)
        return sum + (diff * diff)
    }
    
    // Вычисление MSE
    let mse = sumOfSquaredDifferences / n
    
    return mse
}

// Вычисление MSE
let mseValue = calculateMSE(array11: randomArray1, array22: randomArray2)

// Вывод значения MSE на экран
print("Средне-квадратичное отклонение (MSE) между массивами: \(mseValue)")
print("--------------------")



//Классы
class vec2 {
    private var x:Float
    private var y:Float
    
    init(aa:Float, bb:Float) {
        x = aa
        y = bb
    }
    
    func set(x:Float, y:Float) {
        self.x = x
        self.y = y
    }
    
    func print_vector() {
        print(x, y)
    }
}

var v:vec2 = vec2(aa: 2.0, bb: 5.0)
v.print_vector()
v.set(x: 10.0, y: 4.0)
v.print_vector()
print("--------------------")



/*
На повышенную оценку
 */
class Circle2 {
    var centerX: Double
    var centerY: Double
    var radius: Double
    
    init(centerX: Double, centerY: Double, radius: Double) {
        self.centerX = centerX
        self.centerY = centerY
        self.radius = radius
    }
    
    // Установить радиус с проверкой на корректность
    func setRadius(_ newRadius: Double) {
        if newRadius >= 0 {
            radius = newRadius
        } else {
            print("Ошибка: Радиус должен быть неотрицательным.")
        }
    }
    
    // Установить позицию центра
    func setPosition(centerX: Double, centerY: Double) {
        self.centerX = centerX
        self.centerY = centerY
    }
    
    // Получить радиус окружности
    func getRadius() -> Double {
        return radius
    }
    
    // Вычислить длину окружности
    func getCircumference() -> Double {
        return 2 * Double.pi * radius
    }
    
    // Вычислить площадь круга
    func getArea() -> Double {
        return Double.pi * radius * radius
    }
}

let circle = Circle2(centerX: 0, centerY: 0, radius: 5.0)

circle.setRadius(7.0)
circle.setPosition(centerX: 2.0, centerY: 3.0)

print("Центр: (\(circle.centerX), \(circle.centerY))")
print("Радиус: \(circle.getRadius())")
print("Длина окружности: \(circle.getCircumference())")
print("Площадь круга: \(circle.getArea())")







