//
//  NSData+FileKit.swift
//  FileKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015-2016 Nikolai Vazquez
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

extension NSData: DataType, WritableToFile {

    /// Returns data read from the given path.
    public class func readFromPath(path: Path) throws -> Self {
        guard let contents = self.init(contentsOfFile: path.safeRawValue) else {
            throw FileKitError.ReadFromFileFail(path: path)
        }
        return contents
    }

    /// Returns data read from the given path using NSDataReadingOptions.
    public class func readFromPath(path: Path, options: NSDataReadingOptions) throws -> Self {
        do {
            return try self.init(contentsOfFile: path.safeRawValue, options: options)
        } catch {
            throw FileKitError.ReadFromFileFail(path: path)
        }
    }

}