//
//  LogoView.swift
//  F5
//
//  Created by Ryan Nair on 4/2/23.
//

import SwiftUI

struct LogoView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIView {
        let logo = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 200))

        //// Color Declarations
        let fillColor = CGColor(red: 0.118, green: 0.251, blue: 0.486, alpha: 1.000)

        //// Penn State Meals App Icon.svg Group
        //// Bezier 41 Drawing
        //// Color Declarations

        let path = UIBezierPath()
        path.move(to: CGPoint(x: 250.07, y: 284.76))
        path.addLine(to: CGPoint(x: 249.9, y: 212.48))
        path.addLine(to: CGPoint(x: 214.45, y: 272.02))
        path.addLine(to: CGPoint(x: 201.89, y: 272.02))
        path.addLine(to: CGPoint(x: 166.6, y: 214.03))
        path.addLine(to: CGPoint(x: 166.6, y: 284.76))
        path.addLine(to: CGPoint(x: 140.44, y: 284.76))
        path.addLine(to: CGPoint(x: 140.44, y: 164.29))
        path.addLine(to: CGPoint(x: 163.51, y: 164.29))
        path.addLine(to: CGPoint(x: 208.6, y: 239.15))
        path.addLine(to: CGPoint(x: 253, y: 164.29))
        path.addLine(to: CGPoint(x: 275.89, y: 164.29))
        path.addLine(to: CGPoint(x: 276.23, y: 284.76))
        path.addLine(to: CGPoint(x: 250.07, y: 284.76))
        path.close()

        path.move(to: CGPoint(x: 383.58, y: 238.81))
        path.addCurve(to: CGPoint(x: 383.06, y: 246.04), controlPoint1: CGPoint(x: 383.58, y: 239.16), controlPoint2: CGPoint(x: 383.4, y: 241.57))
        path.addLine(to: CGPoint(x: 313.02, y: 246.04))
        path.addCurve(to: CGPoint(x: 321.96, y: 259.64), controlPoint1: CGPoint(x: 314.28, y: 251.78), controlPoint2: CGPoint(x: 317.25, y: 256.31))
        path.addCurve(to: CGPoint(x: 339.51, y: 264.63), controlPoint1: CGPoint(x: 326.66, y: 262.96), controlPoint2: CGPoint(x: 332.51, y: 264.63))
        path.addCurve(to: CGPoint(x: 352.33, y: 262.48), controlPoint1: CGPoint(x: 344.33, y: 264.63), controlPoint2: CGPoint(x: 348.61, y: 263.91))
        path.addCurve(to: CGPoint(x: 362.75, y: 255.67), controlPoint1: CGPoint(x: 356.07, y: 261.05), controlPoint2: CGPoint(x: 359.54, y: 258.78))
        path.addLine(to: CGPoint(x: 377.04, y: 271.17))
        path.addCurve(to: CGPoint(x: 338.83, y: 286.13), controlPoint1: CGPoint(x: 368.32, y: 281.15), controlPoint2: CGPoint(x: 355.58, y: 286.13))
        path.addCurve(to: CGPoint(x: 311.12, y: 280.03), controlPoint1: CGPoint(x: 328.39, y: 286.13), controlPoint2: CGPoint(x: 319.15, y: 284.1))
        path.addCurve(to: CGPoint(x: 292.53, y: 263.08), controlPoint1: CGPoint(x: 303.09, y: 275.96), controlPoint2: CGPoint(x: 296.89, y: 270.31))
        path.addCurve(to: CGPoint(x: 285.99, y: 238.46), controlPoint1: CGPoint(x: 288.17, y: 255.85), controlPoint2: CGPoint(x: 285.99, y: 247.64))
        path.addCurve(to: CGPoint(x: 292.44, y: 213.94), controlPoint1: CGPoint(x: 285.99, y: 229.4), controlPoint2: CGPoint(x: 288.14, y: 221.23))
        path.addCurve(to: CGPoint(x: 310.17, y: 196.91), controlPoint1: CGPoint(x: 296.74, y: 206.66), controlPoint2: CGPoint(x: 302.65, y: 200.98))
        path.addCurve(to: CGPoint(x: 335.39, y: 190.79), controlPoint1: CGPoint(x: 317.69, y: 192.83), controlPoint2: CGPoint(x: 326.09, y: 190.79))
        path.addCurve(to: CGPoint(x: 360, y: 196.65), controlPoint1: CGPoint(x: 344.45, y: 190.79), controlPoint2: CGPoint(x: 352.65, y: 192.74))
        path.addCurve(to: CGPoint(x: 377.3, y: 213.43), controlPoint1: CGPoint(x: 367.34, y: 200.55), controlPoint2: CGPoint(x: 373.11, y: 206.14))
        path.addCurve(to: CGPoint(x: 383.58, y: 238.81), controlPoint1: CGPoint(x: 381.48, y: 220.71), controlPoint2: CGPoint(x: 383.58, y: 229.17))
        path.close()
        path.move(to: CGPoint(x: 335.57, y: 211.1))
        path.addCurve(to: CGPoint(x: 320.24, y: 216.26), controlPoint1: CGPoint(x: 329.48, y: 211.1), controlPoint2: CGPoint(x: 324.37, y: 212.82))
        path.addCurve(to: CGPoint(x: 312.67, y: 230.37), controlPoint1: CGPoint(x: 316.11, y: 219.71), controlPoint2: CGPoint(x: 313.59, y: 224.41))
        path.addLine(to: CGPoint(x: 358.28, y: 230.37))
        path.addCurve(to: CGPoint(x: 350.71, y: 216.35), controlPoint1: CGPoint(x: 357.36, y: 224.52), controlPoint2: CGPoint(x: 354.84, y: 219.85))
        path.addCurve(to: CGPoint(x: 335.57, y: 211.1), controlPoint1: CGPoint(x: 346.57, y: 212.85), controlPoint2: CGPoint(x: 341.52, y: 211.1))
        path.close()


        path.move(to: CGPoint(x: 482.16, y: 238.81))
        path.addCurve(to: CGPoint(x: 481.64, y: 246.04), controlPoint1: CGPoint(x: 482.16, y: 239.16), controlPoint2: CGPoint(x: 481.99, y: 241.57))
        path.addLine(to: CGPoint(x: 411.6, y: 246.04))
        path.addCurve(to: CGPoint(x: 420.54, y: 259.64), controlPoint1: CGPoint(x: 412.86, y: 251.78), controlPoint2: CGPoint(x: 415.84, y: 256.31))
        path.addCurve(to: CGPoint(x: 438.1, y: 264.63), controlPoint1: CGPoint(x: 425.24, y: 262.96), controlPoint2: CGPoint(x: 431.1, y: 264.63))
        path.addCurve(to: CGPoint(x: 450.92, y: 262.48), controlPoint1: CGPoint(x: 442.92, y: 264.63), controlPoint2: CGPoint(x: 447.19, y: 263.91))
        path.addCurve(to: CGPoint(x: 461.34, y: 255.67), controlPoint1: CGPoint(x: 454.65, y: 261.05), controlPoint2: CGPoint(x: 458.12, y: 258.78))
        path.addLine(to: CGPoint(x: 475.62, y: 271.17))
        path.addCurve(to: CGPoint(x: 437.42, y: 286.13), controlPoint1: CGPoint(x: 466.9, y: 281.15), controlPoint2: CGPoint(x: 454.17, y: 286.13))
        path.addCurve(to: CGPoint(x: 409.7, y: 280.03), controlPoint1: CGPoint(x: 426.97, y: 286.13), controlPoint2: CGPoint(x: 417.73, y: 284.1))
        path.addCurve(to: CGPoint(x: 391.12, y: 263.08), controlPoint1: CGPoint(x: 401.67, y: 275.96), controlPoint2: CGPoint(x: 395.48, y: 270.31))
        path.addCurve(to: CGPoint(x: 384.58, y: 238.46), controlPoint1: CGPoint(x: 386.76, y: 255.85), controlPoint2: CGPoint(x: 384.58, y: 247.64))
        path.addCurve(to: CGPoint(x: 391.02, y: 213.94), controlPoint1: CGPoint(x: 384.58, y: 229.4), controlPoint2: CGPoint(x: 386.72, y: 221.23))
        path.addCurve(to: CGPoint(x: 408.75, y: 196.91), controlPoint1: CGPoint(x: 395.33, y: 206.66), controlPoint2: CGPoint(x: 401.24, y: 200.98))
        path.addCurve(to: CGPoint(x: 433.97, y: 190.79), controlPoint1: CGPoint(x: 416.27, y: 192.83), controlPoint2: CGPoint(x: 424.67, y: 190.79))
        path.addCurve(to: CGPoint(x: 458.58, y: 196.65), controlPoint1: CGPoint(x: 443.03, y: 190.79), controlPoint2: CGPoint(x: 451.24, y: 192.74))
        path.addCurve(to: CGPoint(x: 475.88, y: 213.43), controlPoint1: CGPoint(x: 465.92, y: 200.55), controlPoint2: CGPoint(x: 471.69, y: 206.14))
        path.addCurve(to: CGPoint(x: 482.16, y: 238.81), controlPoint1: CGPoint(x: 480.06, y: 220.71), controlPoint2: CGPoint(x: 482.16, y: 229.17))
        path.close()
        path.move(to: CGPoint(x: 434.15, y: 211.1))
        path.addCurve(to: CGPoint(x: 418.82, y: 216.26), controlPoint1: CGPoint(x: 428.06, y: 211.1), controlPoint2: CGPoint(x: 422.95, y: 212.82))
        path.addCurve(to: CGPoint(x: 411.25, y: 230.37), controlPoint1: CGPoint(x: 414.69, y: 219.71), controlPoint2: CGPoint(x: 412.17, y: 224.41))
        path.addLine(to: CGPoint(x: 456.86, y: 230.37))
        path.addCurve(to: CGPoint(x: 449.29, y: 216.35), controlPoint1: CGPoint(x: 455.94, y: 224.52), controlPoint2: CGPoint(x: 453.42, y: 219.85))
        path.addCurve(to: CGPoint(x: 434.15, y: 211.1), controlPoint1: CGPoint(x: 445.15, y: 212.85), controlPoint2: CGPoint(x: 440.11, y: 211.1))
        path.close()


        path.move(to: CGPoint(x: 549.76, y: 280.28))
        path.addCurve(to: CGPoint(x: 540.04, y: 284.68), controlPoint1: CGPoint(x: 547.12, y: 282.24), controlPoint2: CGPoint(x: 543.89, y: 283.7))
        path.addCurve(to: CGPoint(x: 527.9, y: 286.13), controlPoint1: CGPoint(x: 536.2, y: 285.65), controlPoint2: CGPoint(x: 532.15, y: 286.13))
        path.addCurve(to: CGPoint(x: 502.34, y: 277.71), controlPoint1: CGPoint(x: 516.89, y: 286.13), controlPoint2: CGPoint(x: 508.37, y: 283.33))
        path.addCurve(to: CGPoint(x: 493.31, y: 252.92), controlPoint1: CGPoint(x: 496.32, y: 272.08), controlPoint2: CGPoint(x: 493.31, y: 263.82))
        path.addLine(to: CGPoint(x: 493.31, y: 214.88))
        path.addLine(to: CGPoint(x: 479.02, y: 214.88))
        path.addLine(to: CGPoint(x: 479.02, y: 194.23))
        path.addLine(to: CGPoint(x: 493.31, y: 194.23))
        path.addLine(to: CGPoint(x: 493.31, y: 171.69))
        path.addLine(to: CGPoint(x: 520.16, y: 171.69))
        path.addLine(to: CGPoint(x: 520.16, y: 194.23))
        path.addLine(to: CGPoint(x: 543.22, y: 194.23))
        path.addLine(to: CGPoint(x: 543.22, y: 214.88))
        path.addLine(to: CGPoint(x: 520.16, y: 214.88))
        path.addLine(to: CGPoint(x: 520.16, y: 252.58))
        path.addCurve(to: CGPoint(x: 523.17, y: 261.62), controlPoint1: CGPoint(x: 520.16, y: 256.48), controlPoint2: CGPoint(x: 521.16, y: 259.49))
        path.addCurve(to: CGPoint(x: 531.69, y: 264.79), controlPoint1: CGPoint(x: 525.17, y: 263.73), controlPoint2: CGPoint(x: 528.01, y: 264.79))
        path.addCurve(to: CGPoint(x: 542.54, y: 261.36), controlPoint1: CGPoint(x: 535.94, y: 264.79), controlPoint2: CGPoint(x: 539.55, y: 263.65))
        path.addLine(to: CGPoint(x: 549.76, y: 280.28))
        path.close()

        path.move(to: CGPoint(x: 251.75, y: 485.91))
        path.addLine(to: CGPoint(x: 251.75, y: 512.03))
        path.addLine(to: CGPoint(x: 142.84, y: 512.03))
        path.addLine(to: CGPoint(x: 142.84, y: 371.37))
        path.addLine(to: CGPoint(x: 249.14, y: 371.37))
        path.addLine(to: CGPoint(x: 249.14, y: 397.49))
        path.addLine(to: CGPoint(x: 175.19, y: 397.49))
        path.addLine(to: CGPoint(x: 175.19, y: 428.04))
        path.addLine(to: CGPoint(x: 240.5, y: 428.04))
        path.addLine(to: CGPoint(x: 240.5, y: 453.36))
        path.addLine(to: CGPoint(x: 175.19, y: 453.36))
        path.addLine(to: CGPoint(x: 175.19, y: 485.91))
        path.addLine(to: CGPoint(x: 251.75, y: 485.91))
        path.close()


        path.move(to: CGPoint(x: 307.36, y: 402.32))
        path.addCurve(to: CGPoint(x: 345.95, y: 414.27), controlPoint1: CGPoint(x: 324.11, y: 402.32), controlPoint2: CGPoint(x: 336.98, y: 406.3))
        path.addCurve(to: CGPoint(x: 359.42, y: 450.34), controlPoint1: CGPoint(x: 354.93, y: 422.24), controlPoint2: CGPoint(x: 359.42, y: 434.27))
        path.addLine(to: CGPoint(x: 359.42, y: 512.03))
        path.addLine(to: CGPoint(x: 330.08, y: 512.03))
        path.addLine(to: CGPoint(x: 330.08, y: 498.57))
        path.addCurve(to: CGPoint(x: 297.12, y: 513.64), controlPoint1: CGPoint(x: 324.18, y: 508.61), controlPoint2: CGPoint(x: 313.2, y: 513.64))
        path.addCurve(to: CGPoint(x: 275.51, y: 509.42), controlPoint1: CGPoint(x: 288.82, y: 513.64), controlPoint2: CGPoint(x: 281.61, y: 512.23))
        path.addCurve(to: CGPoint(x: 261.54, y: 497.77), controlPoint1: CGPoint(x: 269.42, y: 506.61), controlPoint2: CGPoint(x: 264.76, y: 502.72))
        path.addCurve(to: CGPoint(x: 256.73, y: 480.88), controlPoint1: CGPoint(x: 258.33, y: 492.81), controlPoint2: CGPoint(x: 256.73, y: 487.18))
        path.addCurve(to: CGPoint(x: 268.08, y: 457.18), controlPoint1: CGPoint(x: 256.73, y: 470.84), controlPoint2: CGPoint(x: 260.51, y: 462.94))
        path.addCurve(to: CGPoint(x: 303.15, y: 448.54), controlPoint1: CGPoint(x: 275.65, y: 451.42), controlPoint2: CGPoint(x: 287.34, y: 448.54))
        path.addLine(to: CGPoint(x: 328.07, y: 448.54))
        path.addCurve(to: CGPoint(x: 321.84, y: 432.77), controlPoint1: CGPoint(x: 328.07, y: 441.7), controlPoint2: CGPoint(x: 325.99, y: 436.44))
        path.addCurve(to: CGPoint(x: 303.15, y: 427.23), controlPoint1: CGPoint(x: 317.69, y: 429.08), controlPoint2: CGPoint(x: 311.46, y: 427.23))
        path.addCurve(to: CGPoint(x: 286.17, y: 429.95), controlPoint1: CGPoint(x: 297.39, y: 427.23), controlPoint2: CGPoint(x: 291.73, y: 428.14))
        path.addCurve(to: CGPoint(x: 272.01, y: 437.28), controlPoint1: CGPoint(x: 280.61, y: 431.76), controlPoint2: CGPoint(x: 275.89, y: 434.2))
        path.addLine(to: CGPoint(x: 260.75, y: 415.37))
        path.addCurve(to: CGPoint(x: 281.95, y: 405.74), controlPoint1: CGPoint(x: 266.65, y: 411.23), controlPoint2: CGPoint(x: 273.71, y: 408.02))
        path.addCurve(to: CGPoint(x: 307.36, y: 402.32), controlPoint1: CGPoint(x: 290.19, y: 403.46), controlPoint2: CGPoint(x: 298.66, y: 402.32))
        path.close()
        path.move(to: CGPoint(x: 304.96, y: 492.54))
        path.addCurve(to: CGPoint(x: 319.22, y: 488.83), controlPoint1: CGPoint(x: 310.32, y: 492.54), controlPoint2: CGPoint(x: 315.08, y: 491.31))
        path.addCurve(to: CGPoint(x: 328.07, y: 477.87), controlPoint1: CGPoint(x: 323.38, y: 486.34), controlPoint2: CGPoint(x: 326.33, y: 482.69))
        path.addLine(to: CGPoint(x: 328.07, y: 466.82))
        path.addLine(to: CGPoint(x: 306.57, y: 466.82))
        path.addCurve(to: CGPoint(x: 287.28, y: 479.48), controlPoint1: CGPoint(x: 293.71, y: 466.82), controlPoint2: CGPoint(x: 287.28, y: 471.04))
        path.addCurve(to: CGPoint(x: 292, y: 489.03), controlPoint1: CGPoint(x: 287.28, y: 483.5), controlPoint2: CGPoint(x: 288.85, y: 486.68))
        path.addCurve(to: CGPoint(x: 304.96, y: 492.54), controlPoint1: CGPoint(x: 295.15, y: 491.37), controlPoint2: CGPoint(x: 299.47, y: 492.54))
        path.close()


        path.move(to: CGPoint(x: 445.79, y: 506.8))
        path.addCurve(to: CGPoint(x: 434.42, y: 511.94), controlPoint1: CGPoint(x: 442.7, y: 509.09), controlPoint2: CGPoint(x: 438.91, y: 510.8))
        path.addCurve(to: CGPoint(x: 420.27, y: 513.64), controlPoint1: CGPoint(x: 429.94, y: 513.07), controlPoint2: CGPoint(x: 425.22, y: 513.64))
        path.addCurve(to: CGPoint(x: 390.42, y: 503.79), controlPoint1: CGPoint(x: 407.4, y: 513.64), controlPoint2: CGPoint(x: 397.45, y: 510.36))
        path.addCurve(to: CGPoint(x: 379.87, y: 474.86), controlPoint1: CGPoint(x: 383.39, y: 497.23), controlPoint2: CGPoint(x: 379.87, y: 487.59))
        path.addLine(to: CGPoint(x: 379.87, y: 430.44))
        path.addLine(to: CGPoint(x: 363.2, y: 430.44))
        path.addLine(to: CGPoint(x: 363.2, y: 406.34))
        path.addLine(to: CGPoint(x: 379.87, y: 406.34))
        path.addLine(to: CGPoint(x: 379.87, y: 380.01))
        path.addLine(to: CGPoint(x: 411.22, y: 380.01))
        path.addLine(to: CGPoint(x: 411.22, y: 406.34))
        path.addLine(to: CGPoint(x: 438.15, y: 406.34))
        path.addLine(to: CGPoint(x: 438.15, y: 430.44))
        path.addLine(to: CGPoint(x: 411.22, y: 430.44))
        path.addLine(to: CGPoint(x: 411.22, y: 474.46))
        path.addCurve(to: CGPoint(x: 414.73, y: 485.01), controlPoint1: CGPoint(x: 411.22, y: 479.02), controlPoint2: CGPoint(x: 412.39, y: 482.53))
        path.addCurve(to: CGPoint(x: 424.68, y: 488.72), controlPoint1: CGPoint(x: 417.08, y: 487.49), controlPoint2: CGPoint(x: 420.39, y: 488.72))
        path.addCurve(to: CGPoint(x: 437.34, y: 484.7), controlPoint1: CGPoint(x: 429.64, y: 488.72), controlPoint2: CGPoint(x: 433.86, y: 487.38))
        path.addLine(to: CGPoint(x: 445.79, y: 506.8))
        path.close()


        path.move(to: CGPoint(x: 182.3, y: 363.01))
        path.addLine(to: CGPoint(x: 176.81, y: 358.14))
        path.addCurve(to: CGPoint(x: 169.24, y: 361.87), controlPoint1: CGPoint(x: 174.55, y: 359.77), controlPoint2: CGPoint(x: 172.02, y: 361.01))
        path.addCurve(to: CGPoint(x: 160.5, y: 363.15), controlPoint1: CGPoint(x: 166.47, y: 362.72), controlPoint2: CGPoint(x: 163.55, y: 363.15))
        path.addCurve(to: CGPoint(x: 150.57, y: 361.38), controlPoint1: CGPoint(x: 156.84, y: 363.15), controlPoint2: CGPoint(x: 153.53, y: 362.55))
        path.addCurve(to: CGPoint(x: 143.64, y: 356.49), controlPoint1: CGPoint(x: 147.61, y: 360.2), controlPoint2: CGPoint(x: 145.3, y: 358.57))
        path.addCurve(to: CGPoint(x: 141.14, y: 349.47), controlPoint1: CGPoint(x: 141.97, y: 354.4), controlPoint2: CGPoint(x: 141.14, y: 352.07))
        path.addCurve(to: CGPoint(x: 143.57, y: 341.46), controlPoint1: CGPoint(x: 141.14, y: 346.42), controlPoint2: CGPoint(x: 141.95, y: 343.75))
        path.addCurve(to: CGPoint(x: 151.27, y: 335.17), controlPoint1: CGPoint(x: 145.18, y: 339.17), controlPoint2: CGPoint(x: 147.75, y: 337.07))
        path.addCurve(to: CGPoint(x: 146.63, y: 325.39), controlPoint1: CGPoint(x: 148.17, y: 332.03), controlPoint2: CGPoint(x: 146.63, y: 328.76))
        path.addCurve(to: CGPoint(x: 148.63, y: 318.86), controlPoint1: CGPoint(x: 146.63, y: 322.94), controlPoint2: CGPoint(x: 147.29, y: 320.76))
        path.addCurve(to: CGPoint(x: 154.36, y: 314.46), controlPoint1: CGPoint(x: 149.97, y: 316.96), controlPoint2: CGPoint(x: 151.88, y: 315.5))
        path.addCurve(to: CGPoint(x: 162.93, y: 312.9), controlPoint1: CGPoint(x: 156.84, y: 313.42), controlPoint2: CGPoint(x: 159.69, y: 312.9))
        path.addCurve(to: CGPoint(x: 173.79, y: 316.06), controlPoint1: CGPoint(x: 167.42, y: 312.9), controlPoint2: CGPoint(x: 171.04, y: 313.95))
        path.addCurve(to: CGPoint(x: 177.93, y: 324.56), controlPoint1: CGPoint(x: 176.55, y: 318.16), controlPoint2: CGPoint(x: 177.93, y: 320.99))
        path.addCurve(to: CGPoint(x: 175.73, y: 331.22), controlPoint1: CGPoint(x: 177.93, y: 327.06), controlPoint2: CGPoint(x: 177.19, y: 329.28))
        path.addCurve(to: CGPoint(x: 168.9, y: 336.7), controlPoint1: CGPoint(x: 174.28, y: 333.16), controlPoint2: CGPoint(x: 172, y: 334.99))
        path.addLine(to: CGPoint(x: 175.98, y: 343.01))
        path.addCurve(to: CGPoint(x: 178.14, y: 336.08), controlPoint1: CGPoint(x: 176.9, y: 340.98), controlPoint2: CGPoint(x: 177.62, y: 338.67))
        path.addLine(to: CGPoint(x: 188.75, y: 339.26))
        path.addCurve(to: CGPoint(x: 184.24, y: 350.3), controlPoint1: CGPoint(x: 187.82, y: 343.43), controlPoint2: CGPoint(x: 186.32, y: 347.11))
        path.addLine(to: CGPoint(x: 189.38, y: 354.88))
        path.addLine(to: CGPoint(x: 182.3, y: 363.01))
        path.close()
        path.move(to: CGPoint(x: 162.93, y: 321.57))
        path.addCurve(to: CGPoint(x: 159.77, y: 322.58), controlPoint1: CGPoint(x: 161.59, y: 321.57), controlPoint2: CGPoint(x: 160.54, y: 321.91))
        path.addCurve(to: CGPoint(x: 158.63, y: 325.18), controlPoint1: CGPoint(x: 159.01, y: 323.25), controlPoint2: CGPoint(x: 158.63, y: 324.12))
        path.addCurve(to: CGPoint(x: 159.28, y: 327.44), controlPoint1: CGPoint(x: 158.63, y: 325.97), controlPoint2: CGPoint(x: 158.84, y: 326.72))
        path.addCurve(to: CGPoint(x: 161.75, y: 330.24), controlPoint1: CGPoint(x: 159.73, y: 328.15), controlPoint2: CGPoint(x: 160.55, y: 329.09))
        path.addCurve(to: CGPoint(x: 165.67, y: 327.51), controlPoint1: CGPoint(x: 163.61, y: 329.27), controlPoint2: CGPoint(x: 164.91, y: 328.36))
        path.addCurve(to: CGPoint(x: 166.82, y: 324.83), controlPoint1: CGPoint(x: 166.43, y: 326.65), controlPoint2: CGPoint(x: 166.82, y: 325.76))
        path.addCurve(to: CGPoint(x: 165.81, y: 322.44), controlPoint1: CGPoint(x: 166.82, y: 323.81), controlPoint2: CGPoint(x: 166.48, y: 323.02))
        path.addCurve(to: CGPoint(x: 162.93, y: 321.57), controlPoint1: CGPoint(x: 165.14, y: 321.86), controlPoint2: CGPoint(x: 164.17, y: 321.57))
        path.close()
        path.move(to: CGPoint(x: 161.47, y: 353.08))
        path.addCurve(to: CGPoint(x: 168.9, y: 351.06), controlPoint1: CGPoint(x: 164.16, y: 353.08), controlPoint2: CGPoint(x: 166.64, y: 352.41))
        path.addLine(to: CGPoint(x: 158.41, y: 341.77))
        path.addCurve(to: CGPoint(x: 155.09, y: 344.65), controlPoint1: CGPoint(x: 156.89, y: 342.69), controlPoint2: CGPoint(x: 155.78, y: 343.66))
        path.addCurve(to: CGPoint(x: 154.04, y: 348.02), controlPoint1: CGPoint(x: 154.39, y: 345.65), controlPoint2: CGPoint(x: 154.04, y: 346.77))
        path.addCurve(to: CGPoint(x: 156.06, y: 351.66), controlPoint1: CGPoint(x: 154.04, y: 349.49), controlPoint2: CGPoint(x: 154.71, y: 350.71))
        path.addCurve(to: CGPoint(x: 161.47, y: 353.08), controlPoint1: CGPoint(x: 157.4, y: 352.61), controlPoint2: CGPoint(x: 159.21, y: 353.08))
        path.close()



        path.apply(CGAffineTransformMakeScale(0.5, 0.5))

        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = fillColor
        shapeLayer.fillColor = fillColor // CGColor(0,0,0,0)
        shapeLayer.lineWidth = 5
        shapeLayer.position = CGPoint(x: -50, y: -75)

        let animation = CABasicAnimation(keyPath: "strokeStart")
        animation.fromValue = 0.0
        animation.toValue = 1.0
        animation.duration = 1.5
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        animation.timingFunction = CAMediaTimingFunction(name: .easeOut)
        shapeLayer.add(animation, forKey: nil)

        let gradientLayer = CAGradientLayer()
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)

        gradientLayer.colors = [UIColor.white.cgColor] + [CGColor](repeating: CGColor(red: 0.59, green: 0.75, blue: 0.90, alpha: 1), count: 5)
        gradientLayer.frame = logo.bounds
        gradientLayer.mask = shapeLayer

        logo.layer.addSublayer(gradientLayer)
        return logo
    }

    func updateUIView(_ uiView: UIView, context: Context) {

    }
}
 

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
