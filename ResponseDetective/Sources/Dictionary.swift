//
// Dictionary.swift
//
// Copyright © 2016-2020 Netguru S.A. All rights reserved.
// Licensed under the MIT License.
//

extension Dictionary {

	/// Appends elements of other `dictionary` and returns a new one.
	///
	/// - Parameters:
	///     - dictionary: The dictionary whose elements to append. Values
	///       under existing keys will replace values in `self`.
	///
	/// - Returns: A `Dictionary` containing elements of `self` merged with
	///   elements of other `dictionary.
	internal func appending(elementsOf dictionary: [Key: Value]) -> [Key: Value] {
		var mutableSelf = self
		for (key, value) in dictionary {
			mutableSelf[key] = value
		}
		return mutableSelf
	}

}
