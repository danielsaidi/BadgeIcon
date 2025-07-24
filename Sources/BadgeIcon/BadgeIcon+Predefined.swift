//
//  BadgeIcon+Predefined.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-12-15.
//  Copyright © 2023-2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension BadgeIcon where Icon == Image {

    static let accessibility = prominent("accessibility", .blue, fill: false)
    static let airplane = prominent("airplane", .blue)
    static let airplaneMode = prominent("airplane", .orange)
    static let alert = icon("exclamationmark.triangle", .orange)
    static let appStore = icon("apple.logo", .white.opacity(0.7), .black)
    static let bandage = prominent("bandage", .orange)
    static let barChart = prominent("chart.bar", .blue)
    static let battery = prominent("battery.100percent", .green)
    static let bicycle = prominent("bicycle", .blue)
    static let birthday = prominent("birthday.cake", .pink)
    static let bluetooth = prominent("bluetooth", .blue)
    static let bolt = icon("bolt", .yellow)
    static let book = prominent("book", .orange)
    static let bookmark = prominent("bookmark", .orange)
    static let briefcase = prominent("briefcase", .brown)
    static let building = prominent("building.2", .gray)
    static let bug = multicolor("ladybug", .red, .white)
    static let calculator = prominent("plus.forwardslash.minus", .orange)
    static let calendar = icon("calendar", .red)
    static let camera = prominent("camera", .gray)
    static let car = prominent("car", .blue)
    static let cart = prominent("cart", .green)
    static let chat = prominent("bubble.left.and.bubble.right", .blue)
    static let checkmark = icon("checkmark.circle", .green)
    static let cleaning = prominent("bubbles.and.sparkles", .blue)
    static let clipboard = prominent("clipboard", .gray)
    static let clock = icon("clock", .white.opacity(0.9), .black)
    static let compass = prominent("safari.fill", .blue)
    static let controlCenter = prominent("switch.2", .gray)
    static let cpu = prominent("cpu", .blue)
    static let creditCard = prominent("creditcard", .blue)
    static let cup = prominent("cup.and.saucer", .brown)
    static let cutlery = prominent("fork.knife", .orange)
    static let developer = prominent("hammer", .gray)
    static let displayAndBrightness = prominent("sun.max", .blue)
    static let document = prominent("doc.text", .blue)
    static let drop = prominent("drop", .blue)
    static let email = prominent("envelope", .blue)
    static let emoji = palette("face.smiling.inverse", [.black, .yellow])
    static let error = icon("exclamationmark.triangle", .red)
    static let export = shareIcon("square.and.arrow.up.on.square")
    static let eyeglasses = prominent("eyeglasses", .black)
    static let faceId = prominent("faceid", .green)
    static let facemask = prominent("facemask", .blue)
    static let featureRequest = icon("gift", .pink)
    static let fingerprint = prominent("touchid", .blue)
    static let fitness = prominent("figure.run", .green)
    static let focus = prominent("moon", .indigo)
    static let folder = prominent("folder", .blue)
    static let games = prominent("gamecontroller", .orange)
    static let graduation = prominent("graduationcap", .blue)
    static let headphones = prominent("beats.headphones", .gray)
    static let health = prominent("heart.text.square", .red)
    static let heart = icon("heart", .red)
    static let keyboard = prominent("keyboard", .gray)
    static let keyboardLight = light("keyboard")
    static let iCloud = icon("icloud.fill", .cyan.opacity(0.8))
    static let languageSettings = icon("globe", .cyan)
    static let leaf = prominent("leaf", .green)
    static let lightbulb = multicolor("lightbulb", .yellow)
    static let lineChart = prominent("chart.xyaxis.line", .blue)
    static let location = prominent("location", .blue)
    static let lock = prominent("lock", .gray)
    static let map = prominent("map", .green)
    static let memory = prominent("memorychip", .green)
    static let message = prominent("message", .green)
    static let microphone = prominent("mic", .red)
    static let mobileService = prominent("antenna.radiowaves.left.and.right", .green)
    static let music = prominent("music.note", .pink)
    static let network = prominent("network", .blue)
    static let notifications = prominent("bell.badge.fill", .red)
    static let pause = mediaControl("pause.fill", .orange)
    static let palette = multicolor("paintpalette", .yellow, .white)
    static let passwords = prominent("key", .gray)
    static let pencil = prominent("pencil", .orange)
    static let person = icon("person", .black.opacity(0.7))
    static let personCircle = icon("person.circle", .black.opacity(0.7))
    static let personalHotspot = prominent("personalhotspot", .green)
    static let phone = prominent("phone", .green)
    static let pill = prominent("pills", .red)
    static let play = mediaControl("play.fill", .green)
    static let power = prominent("power", .red)
    static let premium = icon("crown", .orange)
    static let presentation = prominent("rectangle.on.rectangle", .orange)
    static let privacy = prominent("hand.raised.fill", .blue)
    static let prominentAlert = prominent("exclamationmark.triangle", .orange)
    static let prominentCheckmark = prominent("checkmark.circle", .green)
    static let prominentError = prominent("exclamationmark.triangle", .red)
    static let recycling = prominent("arrow.3.trianglepath", .green)
    static let safari = icon("safari", .blue)
    static let screenTime = prominent("hourglass", .indigo)
    static let search = prominent("magnifyingglass", .gray)
    static let settings = prominent("gearshape", .gray)
    static let share = shareIcon("square.and.arrow.up")
    static let shield = icon("checkmark.shield.fill", .green)
    static let shield_lock = prominent("lock.shield", .blue)
    static let sideButton = prominent("button.vertical.left.press", .blue)
    static let soundAndHaptics = prominent("speaker.wave.3", .pink)
    static let sos = prominent("sos", .red)
    static let speaker = prominent("speaker.wave.2", .blue)
    static let star = icon("star", .yellow)
    static let studentdesk = prominent("studentdesk", .brown)
    static let suitcase = prominent("suitcase", .brown)
    static let tag = prominent("tag", .green)
    static let thermometer = prominent("thermometer", .red)
    static let timer = prominent("timer", .orange)
    static let touchId = icon("touchid", .pink)
    static let train = prominent("train.side.front.car", .green)
    static let trash = prominent("trash", .red)
    static let tv = icon("tv", .white.opacity(0.8), .black)
    static let usb = prominent("cable.connector", .gray)
    static let video = prominent("video", .green)
    static let walk = prominent("figure.walk", .green)
    static let wallet = prominent("wallet.pass", .black)
    static let weather = multicolor("cloud.sun.fill", .cyan)
    static let wifi = prominent("wifi", .blue)
    static let wind = prominent("wind", .gray)
    static let wrench = prominent("wrench", .gray)
}

public extension BadgeIcon where Icon == Image {

    /// An icon with a certain fill color.
    static func icon(
        _ iconName: String,
        _ iconColor: Color,
        _ badgeIcon: Color = .white
    ) -> Self {
        .init(
            icon: .symbol(iconName),
            style: .init(
                iconColor: iconColor,
                badgeColor: badgeIcon
            )
        )
    }

    /// A light icon has a light badge and gray content.
    static func light(
        _ iconName: String
    ) -> Self {
        .init(
            icon: .symbol(iconName),
            style: .init(iconFill: false)
        )
    }

    /// A media icon has more icon padding.
    static func mediaControl(
        _ iconName: String,
        _ badgeIcon: Color
    ) -> Self {
        .init(
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
        _ iconName: String,
        _ iconColor: Color,
        _ badgeColor: Color = .white
    ) -> Self {
        .init(
            icon: .symbol(iconName),
            style: .init(
                iconColor: iconColor,
                iconColorScheme: .light,
                iconRenderingMode: .multicolor,
                badgeColor: badgeColor
            )
        )
    }

    /// A palette icon has an icon on a white badge.
    static func palette(
        _ iconName: String,
        _ colors: [Color]
    ) -> Self {
        .init(
            icon: .symbol(iconName),
            style: .init(
                iconColors: colors,
                iconRenderingMode: .palette
            )
        )
    }

    /// A prominent icon has a white icon on a colored badge.
    static func prominent(
        _ iconName: String,
        _ badgeColor: Color,
        fill: Bool = true
    ) -> Self {
        .init(
            icon: .symbol(iconName),
            style: .init(
                iconFill: fill,
                badgeColor: badgeColor
            )
        )
    }
    
    /// A share icon has a different icon padding and offset.
    static func shareIcon(
        _ iconName: String
    ) -> Self {
        .init(
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
@ViewBuilder
private var previewItems: some View {

    item(.accessibility, "accessibility")
    item(.airplane, "airplane")
    item(.airplaneMode, "airplaneMode")
    item(.alert, "alert")
    item(.appStore, "appStore")
    item(.bandage, "bandage")
    item(.barChart, "barChart")
    item(.battery, "battery")
    item(.bicycle, "bicycle")
    item(.birthday, "birthday")
    item(.bolt, "bolt")
    item(.book, "book")
    item(.bookmark, "bookmark")
    item(.briefcase, "briefcase")
    item(.bug, "bug")
    item(.building, "building")
    item(.calculator, "calculator")
    item(.calendar, "calendar")
    item(.camera, "camera")
    item(.car, "car")
    item(.cart, "cart")
    item(.chat, "chat")
    item(.checkmark, "checkmark")
    item(.cleaning, "cleaning")
    item(.clipboard, "clipboard")
    item(.clock, "clock")
    item(.compass, "compass")
    item(.controlCenter, "controlCenter")
    item(.cpu, "cpu")
    item(.creditCard, "creditCard")
    item(.cup, "cup")
    item(.cutlery, "cutlery")
    item(.document, "document")
    item(.displayAndBrightness, "displayAndBrightness")
    item(.developer, "developer")
    item(.drop, "drop")
    item(.email, "email")
    item(.emoji, "emoji")
    item(.error, "error")
    item(.export, "export")
    item(.eyeglasses, "eyeglasses")
    item(.faceId, "faceId")
    item(.facemask, "facemask")
    item(.featureRequest, "featureRequest")
    item(.fitness, "fitness")
    item(.fingerprint, "fingerprint")
    item(.focus, "focus")
    item(.folder, "folder")
    item(.games, "games")
    item(.graduation, "graduation")
    item(.headphones, "headphones")
    item(.health, "health")
    item(.heart, "heart")
    item(.iCloud, "iCloud")
    item(.keyboard, "keyboard")
    item(.keyboardLight, "keyboard")
    item(.languageSettings, "languageSettings")
    item(.leaf, "leaf")
    item(.lightbulb, "lightbulb")
    item(.lineChart, "lineChart")
    item(.location, "location")
    item(.lock, "lock")
    item(.map, "map")
    item(.memory, "memory")
    item(.message, "messages")
    item(.microphone, "microphone")
    item(.mobileService, "mobileService")
    item(.music, "music")
    item(.network, "network")
    item(.notifications, "notifications")
    item(.palette, "palette")
    item(.passwords, "passwords")
    item(.pause, "pause")
    item(.pencil, "pencil")
    item(.person, "person")
    item(.personCircle, "person")
    item(.personalHotspot, "personalHotspot")
    item(.phone, "phone")
    item(.pill, "pill")
    item(.play, "play")
    item(.power, "power")
    item(.premium, "premium")
    item(.presentation, "presentation")
    item(.privacy, "privacy")
    item(.prominentAlert, "prominentAlert")
    item(.prominentCheckmark, "prominentCheckmark")
    item(.prominentError, "prominentError")
    item(.recycling, "recycling")
    item(.safari, "safari")
    item(.screenTime, "screenTime")
    item(.search, "search")
    item(.settings, "settings")
    item(.share, "share")
    item(.shield, "shield")
    item(.shield_lock, "shield_lock")
    item(.sideButton, "sideButton")
    item(.soundAndHaptics, "soundAndHaptics")
    item(.sos, "sos")
    item(.speaker, "speaker")
    item(.star, "star")
    item(.studentdesk, "studentdesk")
    item(.suitcase, "suitcase")
    item(.tag, "tag")
    item(.thermometer, "thermometer")
    item(.timer, "timer")
    item(.train, "train")
    item(.trash, "trash")
    item(.touchId, "touchId")
    item(.tv, "tv")
    item(.usb, "usb")
    item(.video, "video")
    item(.walk, "walk")
    item(.wallet, "wallet")
    item(.weather, "weather")
    item(.wind, "wind")
    item(.wifi, "wifi")
    item(.wrench, "wrench")
}

#Preview("Grid") {
    NavigationStack {
        ScrollView(.vertical) {
            LazyVGrid(columns: [.init(.adaptive(minimum: 50, maximum: 80))]) {
                previewItems
            }
            .padding()
        }
        .labelStyle(.iconOnly)
    }
}

#Preview("List") {
    List {
        previewItems
    }
}

private func item(
    _ view: BadgeIcon<Image>,
    _ name: String
) -> some View {
    Label(
        title: { Text(name) },
        icon: { view }
    )
}
