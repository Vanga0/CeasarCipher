//
//  main.swift
//  CeaserCipher
//
//  Created by Vagan Albertyan on 24.09.2022.
//

import Foundation

var alphabetstr: [Character] = Array("абвгдеёжзийклмнопрстуфхцчшщъыьэюя")
print("Введите слово для зашифровки :")
var secretMessage = readLine()//"привет мир"
print("Введите сдвиг:")
let shift1 = readLine()
var Intshift1 = Int(shift1!)
var message = Array(secretMessage!)

for i in 0 ..< message.count {

  for j in 0 ..< alphabetstr.count {

    if message[i] == alphabetstr[j] {

      message[i] = alphabetstr[(j + Intshift1!) % 33]  // В скобках сдвиг// процент количество букв используемых в алфавите
      break
    }
  }
}
let messageArr = String(message)
print("Зашифрованное слово: \(messageArr)")
////////////////////////////////////////////////////////




print("Введите слово для расшифровки:")
var descriptionsecretMessage = readLine()
print("Введите сдвиг:")
let shift2 = readLine()
var Intshift2 = Int(shift2!)
var descrmessage = Array(descriptionsecretMessage!)

for k in 0 ..< descrmessage.count {

    for m in 0 ..< alphabetstr.count {

    if descrmessage[k] == alphabetstr[m] {
        if (m - Intshift2!) % 33  >= 0  {
          descrmessage[k] = alphabetstr[(m - Intshift2! ) % 33]
        }
        descrmessage[k] = alphabetstr[(m + 33 - Intshift2! ) % 33]
      break
    }
  }
}
let descriptionMessageArr = String(descrmessage)
print("Расшифрованное слово: \(descriptionMessageArr)")
