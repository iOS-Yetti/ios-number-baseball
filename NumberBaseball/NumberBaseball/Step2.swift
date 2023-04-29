//
//  Step2.swift
//  NumberBaseball
//
//  Created by Minseong Kang on 2023/04/29.
//

import Foundation

enum GameError: Error {
	case menuError
	case wrongInputError
    case wrongUserInput
    case notOfTypeInt
    case notAllowedDuplicatedNumber
}

func playNumberBaseBall() {
	do {
		try selectMenu()
	} catch GameError.menuError {
		print("입력이 잘못되었습니다.")
		playNumberBaseBall()
	} catch GameError.wrongInputError {
		print("입력이 잘못되었습니다.")
		playNumberBaseBall()
	} catch {
		print(error)
		playNumberBaseBall()
	}
}

func selectMenu() throws {
	print("1. 게임시작")
	print("2. 게임종료")
	print("원하는 기능을 선택해주세요: ", terminator: " ")
	if let inputNumber = readLine() {
		
		guard inputNumber == "1" || inputNumber == "2" else { throw GameError.menuError }
		
		if inputNumber == "1" {
			startGame()
		} else if inputNumber == "2" {
			print("게임을 종료합니다.")
		}
	}
}

func userInput() {
    print("숫자 3개를 띄어쓰기로 구분하여 입력해주세요.")
    print("중복된 숫자는 허용하지 않습니다.")
    print("입력 :", terminator: " ")
    guard let userInput = readLine()?.split(separator: " ") else { return }
    if userInput.count != 3 {
        print("입력이 잘못되었습니다.")
        
    }
}
