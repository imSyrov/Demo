//
//  CollectionsDemo.swift
//  DemoSwift
//
//  Created by Ilya Syrov on 07.11.2023.
//

import Foundation

/// Init
var myArray: Array<String> = []
var myArray1: [Int] = []
var myArray2 = [1,2,3]

var myDict: Dictionary<String, Int> = [:]
var myDict1: [String: Int] = [:]
var myDict2 = ["Oct" : 10]

var mySet: Set<Int> = []
var mySet1 = Set<String>()
var mySet2: Set = [1,2,3]

/// Equatable
///  Равенство -> переопределение оператора сравнения ==
///  1. Рефлексивность: a == a
///  2. Симметричность:  a == b ->  b == a
///  3. Транзитивность: a == b && c == b -> a == c
///  4. Согласованность: для a и b  a.equal(b) вернет одинаковые значение, что и ранее, если значения полей не изменялось
///  5. Cравнение на nil: a != nill


/// Hashable
/// Hash-table + Hashcode func (h-func)
///  Hash-code contracts:
///  1. значение a.hashCode не изменятеся, если не изменялось a
///  2. a == b -> a.hashCode == b.hashCode
///  3. a != b -> a.hashCode != b.hashCode
///  !!!  a.hashCode != b.hashCode -> гарантировано a != b
///     НО: a.hashCode == b.hashCode не значит, что a == b  КОЛЛИЗИЯ

/// Collection
/// Последовательность, элементы которой могут быть пройдены несколько раз неразрушающим образом и доступны по индексированному индексу.
/// starIndex + endIndex
/// Индекс, который обеспечивает доступ как минимум только для чтения к элементам вашего типа.
/// index(after: )

/// Sequence
/// Тип, обеспечивающий последовательный итерационный доступ к своим элементам.
/// func makeIterator() -> Self.Iterator
///  Sequence + IteratorProtocol если тип может быть итератором -> реализовать func next -> Self.Iterator?
