//도현이의 집 N개가 수직선 위에 있다.
//각각의 집 좌표가 X1, X2, ..., Xn이고 집 여러개가 같은 좌표는 불가능
//첫째 줄에 집의 개수와 공유기의 개수 C가 하나 이상의 빈칸을 두고 주어짐
//둘째 줄부터 N개의 줄에는 집의 좌표를 나타내는 Xi(0<=Xi<=1,000,000,000)가 하나씩 주어짐

let house = readLine()!.split(separator: " ").map{Int($0)!}
var place = [Int]()

for _ in 0...house[0]-1{
    let m = Int(readLine()!)!
    place.append(m)
}
print(place)