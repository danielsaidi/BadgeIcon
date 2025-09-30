//
//  BadgeIcon+Predefined.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-12-15.
//  Copyright © 2023-2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension BadgeIcon where Icon == Image {

    static let accessibility = prominent("accessibility", "accessibility", .blue, fill: false)
    static let airplane = prominent("airplane", "airplane", .blue)
    static let airplaneMode = prominent("airplaneMode", "airplane", .orange)
    static let alert = icon("alert", "exclamationmark.triangle", .orange)
    static let appStore = icon("appStore", "apple.logo", .white.opacity(0.7), .black)
    static let bandage = prominent("bandage", "bandage", .orange)
    static let barChart = prominent("barChart", "chart.bar", .blue)
    static let battery = prominent("battery", "battery.100percent", .green)
    static let bicycle = prominent("bicycle", "bicycle", .blue)
    static let birthday = prominent("birthday", "birthday.cake", .pink)
    static let bluetooth = prominent("bluetooth", "bluetooth", .blue)
    static let bolt = icon("bolt", "bolt", .yellow)
    static let book = prominent("book", "book", .orange)
    static let bookmark = prominent("bookmark", "bookmark", .orange)
    static let briefcase = prominent("briefcase", "briefcase", .brown)
    static let building = prominent("building", "building.2", .gray)
    static let bug = multicolor("bug", "ladybug", [.red], .white)
    static let calculator = prominent("calculator", "plus.forwardslash.minus", .orange)
    static let calendar = icon("calendar", "calendar", .red)
    static let camera = prominent("camera", "camera", .gray)
    static let car = prominent("car", "car", .blue)
    static let cart = prominent("cart", "cart", .green)
    static let chat = prominent("chat", "bubble.left.and.bubble.right", .blue)
    static let checkmark = icon("checkmark", "checkmark.circle", .green)
    static let cleaning = prominent("cleaning", "bubbles.and.sparkles", .blue)
    static let clipboard = palette("clipboard", "list.clipboard.fill", [.white, .brown], iconOffsetY: -0.05)
    static let clock = icon("clock", "clock", .white.opacity(0.9), .black)
    static let compass = prominent("compass", "safari.fill", .blue)
    static let controlCenter = prominent("controlCenter", "switch.2", .gray)
    static let cpu = prominent("cpu", "cpu", .blue)
    static let creditCard = prominent("creditCard", "creditcard", .blue)
    static let cup = prominent("cup", "cup.and.saucer", .brown)
    static let cutlery = prominent("cutlery", "fork.knife", .orange)
    static let developer = prominent("developer", "hammer", .gray)
    static let displayAndBrightness = prominent("displayAndBrightness", "sun.max", .blue)
    static let document = prominent("document", "doc.text", .blue)
    static let drop = prominent("drop", "drop", .blue)
    static let email = prominent("email", "envelope", .blue)
    static let emoji = palette("emoji", "face.smiling.inverse", [.black, .yellow])
    static let error = icon("error", "exclamationmark.triangle", .red)
    static let export = shareIcon("export", "square.and.arrow.up.on.square")
    static let eyeglasses = prominent("eyeglasses", "eyeglasses", .black)
    static let faceId = prominent("faceId", "faceid", .green)
    static let facemask = prominent("facemask", "facemask", .blue)
    static let featureRequest = icon("featureRequest", "gift", .pink)
    static let fingerprint = prominent("fingerprint", "touchid", .blue)
    static let fitness = prominent("fitness", "figure.run", .green)
    static let focus = prominent("focus", "moon", .indigo)
    static let folder = prominent("folder", "folder", .blue)
    static let font = icon("font", "bold", .teal, iconPadding: 0.2)
    static let games = prominent("games", "gamecontroller", .orange)
    static let graduation = prominent("graduation", "graduationcap", .blue)
    static let headphones = prominent("headphones", "beats.headphones", .gray)
    static let health = prominent("health", "heart.text.square", .red)
    static let heart = icon("heart", "heart", .red)
    static let keyboard = prominent("keyboard", "keyboard", .gray)
    static let keyboardLight = light("keyboardLight", "keyboard")
    static let iCloud = icon("iCloud", "icloud.fill", .cyan.opacity(0.8))
    static let languageSettings = icon("languageSettings", "globe", .cyan)
    static let leaf = prominent("leaf", "leaf", .green)
    static let lightbulb = multicolor("lightbulb", "lightbulb", [.yellow])
    static let lineChart = prominent("lineChart", "chart.xyaxis.line", .blue)
    static let location = prominent("location", "location", .blue)
    static let lock = prominent("lock", "lock", .gray)
    static let map = prominent("map", "map", .green)
    static let memory = prominent("memory", "memorychip", .green)
    static let message = prominent("message", "message", .green)
    static let microphone = prominent("microphone", "mic", .red)
    static let mobileService = prominent("mobileService", "antenna.radiowaves.left.and.right", .green)
    static let music = prominent("music", "music.note", .pink)
    static let network = prominent("network", "network", .blue)
    static let notifications = prominent("notifications", "bell.badge.fill", .red)
    static let pause = mediaControl("pause", "pause.fill", .orange)
    static let palette = multicolor("palette", "paintpalette", [.yellow], .white)
    static let passwords = prominent("passwords", "key", .gray)
    static let pencil = prominent("pencil", "pencil", .orange)
    static let person = icon("person", "person", .black.opacity(0.7))
    static let personCircle = icon("personCircle", "person.circle", .black.opacity(0.7))
    static let personalHotspot = prominent("personalHotspot", "personalhotspot", .green)
    static let phone = prominent("phone", "phone", .green)
    static let pill = prominent("pill", "pills", .red)
    static let play = mediaControl("play", "play.fill", .green)
    static let power = prominent("power", "power", .red)
    static let premium = icon("premium", "crown", .orange)
    static let presentation = prominent("presentation", "rectangle.on.rectangle", .orange)
    static let privacy = prominent("privacy", "hand.raised.fill", .blue)
    static let prominentAlert = prominent("prominentAlert", "exclamationmark.triangle", .orange)
    static let prominentCheckmark = prominent("prominentCheckmark", "checkmark.circle", .green)
    static let prominentError = prominent("prominentError", "exclamationmark.triangle", .red)
    static let recycling = prominent("recycling", "arrow.3.trianglepath", .green)
    static let safari = icon("safari", "safari", .blue)
    static let screenTime = prominent("screenTime", "hourglass", .indigo)
    static let search = prominent("search", "magnifyingglass", .gray)
    static let settings = prominent("settings", "gearshape", .gray)
    static let share = shareIcon("share", "square.and.arrow.up")
    static let shield = icon("shield", "checkmark.shield.fill", .green)
    static let shield_lock = prominent("shield_lock", "lock.shield", .blue)
    static let sideButton = prominent("sideButton", "button.vertical.left.press", .blue)
    static let soundAndHaptics = prominent("soundAndHaptics", "speaker.wave.3", .pink)
    static let sos = prominent("sos", "sos", .red)
    static let speaker = prominent("speaker", "speaker.wave.2", .blue)
    static let star = icon("star", "star", .yellow)
    static let studentdesk = prominent("studentdesk", "studentdesk", .brown)
    static let suitcase = prominent("suitcase", "suitcase", .brown)
    static let tag = prominent("tag", "tag", .green)
    static let thermometer = prominent("thermometer", "thermometer", .red)
    static let timer = prominent("timer", "timer", .orange)
    static let touchId = icon("touchId", "touchid", .pink)
    static let train = prominent("train", "train.side.front.car", .green)
    static let trash = prominent("trash", "trash", .red)
    static let tv = icon("tv", "tv", .white.opacity(0.8), .black)
    static let usb = prominent("usb", "cable.connector", .gray)
    static let video = prominent("video", "video", .green)
    static let walk = prominent("walk", "figure.walk", .green)
    static let wallet = prominent("wallet", "wallet.pass", .black)
    static let weather = multicolor("weather", "cloud.sun.fill", [], .blue)
    static let wifi = prominent("wifi", "wifi", .blue)
    static let wind = prominent("wind", "wind", .gray)
    static let wrench = prominent("wrench", "wrench", .gray)
}

public extension BadgeIcon where Icon == Image {

    /// An icon with a certain fill color.
    static func icon(
        _ name: String? = nil,
        _ iconName: String,
        _ iconColor: Color,
        _ badgeIcon: Color = .white,
        iconPadding: Double? = nil
    ) -> Self {
        .init(
            name: name ?? iconName,
            icon: .symbol(iconName),
            style: .init(
                iconColor: iconColor,
                iconPadding: iconPadding,
                badgeColor: badgeIcon
            )
        )
    }

    /// A light icon has a light badge and gray content.
    static func light(
        _ name: String? = nil,
        _ iconName: String
    ) -> Self {
        .init(
            name: name ?? iconName,
            icon: .symbol(iconName),
            style: .init(iconFill: false)
        )
    }

    /// A media icon has more icon padding.
    static func mediaControl(
        _ name: String? = nil,
        _ iconName: String,
        _ badgeIcon: Color
    ) -> Self {
        .init(
            name: name ?? iconName,
            icon: .symbol(iconName),
            style: .init(
                iconColor: .white,
                iconPadding: 0.25,
                badgeColor: badgeIcon
            )
        )
    }

    /// A multicolor icon has an icon on a white badge.
    static func multicolor(
        _ name: String? = nil,
        _ iconName: String,
        _ iconColors: [Color],
        iconOffsetY: Double = 0,
        _ badgeColor: Color = .white
    ) -> Self {
        .init(
            name: name ?? iconName,
            icon: .symbol(iconName),
            style: .init(
                iconColors: iconColors,
                iconColorScheme: .light,
                iconOffset: .init(x: 0, y: iconOffsetY),
                iconRenderingMode: .multicolor,
                badgeColor: badgeColor
            )
        )
    }

    /// A palette icon has an icon on a white badge.
    static func palette(
        _ name: String? = nil,
        _ iconName: String,
        _ colors: [Color],
        iconOffsetY: Double = 0
    ) -> Self {
        .init(
            name: name ?? iconName,
            icon: .symbol(iconName),
            style: .init(
                iconColors: colors,
                iconOffset: .init(x: 0, y: iconOffsetY),
                iconRenderingMode: .palette
            )
        )
    }

    /// A prominent icon has a white icon on a colored badge.
    static func prominent(
        _ name: String? = nil,
        _ iconName: String,
        _ badgeColor: Color,
        fill: Bool = true
    ) -> Self {
        .init(
            name: name ?? iconName,
            icon: .symbol(iconName),
            style: .init(
                iconFill: fill,
                badgeColor: badgeColor
            )
        )
    }
    
    /// A share icon has a different icon padding and offset.
    static func shareIcon(
        _ name: String? = nil,
        _ iconName: String
    ) -> Self {
        .init(
            name: name ?? iconName,
            icon: .symbol(iconName),
            style: .init(
                iconFill: false,
                iconOffset: .init(x: 0, y: -0.03),
                iconPadding: 0.15
            )
        )
    }
}

@MainActor
public extension Collection where Element == BadgeIcon<Image> {

    /// A list of all predefined image-based badge icons.
    static var predefined: [Element] {
        Element.predefined
    }
}

public extension BadgeIcon where Icon == Image {

    /// A list of all predefined image-based badge icons.
    static var predefined: [Self] {
        [
            .accessibility, .airplane, .airplaneMode, .alert, .appStore,
            .bandage, .barChart, .battery, .bicycle, .birthday, .bolt,
            .book, .bookmark, .briefcase, .bug, .building,
            .calculator, .calendar, .camera, .car, .cart, .chat, .checkmark,
            .cleaning, .clipboard, .clock, .compass, .controlCenter, .cpu,
            .creditCard, .cup, .cutlery,
            .document, .displayAndBrightness, .developer, .drop,
            .email, .emoji, .error, .export, .eyeglasses,
            .faceId, .facemask, .featureRequest, .fitness, .fingerprint,
            .focus, .folder, .font,
            .games, .graduation,
            .headphones, .health, .heart,
            .iCloud,
            .keyboard, .keyboardLight,
            .languageSettings, .leaf, .lightbulb, .lineChart, .location, .lock,
            .map, .memory, .message, .microphone, .mobileService, .music,
            .network, .notifications,
            .palette, .passwords, .pause, .pencil, .person, .personCircle,
            .personalHotspot, .phone, .pill, .play, .power, .premium, .presentation,
            .privacy, .prominentAlert, .prominentCheckmark, .prominentError,
            .recycling,
            .safari, .screenTime, .search, .settings, .share, .shield, .shield_lock,
            .sideButton, .soundAndHaptics, .sos, .speaker, .star, .studentdesk, .suitcase,
            .tag, .thermometer, .timer, .train, .trash, .touchId, .tv,
            .usb,
            .video,
            .walk, .wallet, .weather, .wind, .wifi, .wrench
        ]
    }
}

#Preview("Grid") {
    NavigationStack {
        ScrollView(.vertical) {
            LazyVGrid(
                columns: [.init(.adaptive(minimum: 50, maximum: 80), spacing: 10)],
                spacing: 10
            ) {
                ForEach(BadgeIcon<Image>.predefined, id: \.id) {
                    $0.label
                }
            }
            .padding()
        }
        .labelStyle(.iconOnly)
    }
}

#Preview("List") {
    List {
        ForEach(BadgeIcon<Image>.predefined, id: \.id) {
            $0.label
        }
    }
}
