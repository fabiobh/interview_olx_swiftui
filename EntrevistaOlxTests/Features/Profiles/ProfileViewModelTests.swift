//
//  ProfileViewModelTests.swift
//  EntrevistaOlxTests
//
//  Created by FabioCunha on 09/07/25.
//

import XCTest
@testable import EntrevistaOlx

// Testes para a ProfileViewModel

final class ProfileViewModelTests: XCTestCase {

    private var sut: ProfileViewModel!
    private var mockUserService: MockUserService!
    
    override func setUp() {
        super.setUp()
        
        mockUserService = MockUserService()
        sut = ProfileViewModel(userService: mockUserService)
    }
 
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFetchUserSuccess() async throws {
        // Given
        let expectedUser = mockUserService.mockUser
        mockUserService.shoudReturnSucess = true

        // When
        await sut.fetchUser(id: UUID())
        
        print("sut.user: \(String(describing: sut.user))")
        print("sut.user.id: \(String(describing: sut.user?.id))")

        // Then
        XCTAssertEqual(sut.user?.id, expectedUser.id)
        XCTAssertEqual(sut.user?.name, expectedUser.name)
        XCTAssertEqual(sut.user?.email, expectedUser.email)
        XCTAssertFalse(sut.isLoading)
    }

    func testFetchUserFailure() async throws {
        // Given
        mockUserService.shoudReturnSucess = false

        // When
        await sut.fetchUser(id: UUID())

        // Then
        XCTAssertNil(sut.user)
        XCTAssertTrue(sut.hasError)
        XCTAssertFalse(sut.isLoading)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
