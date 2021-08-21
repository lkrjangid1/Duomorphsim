# duomorphsim

this package help you to give glassomorphic+ neomrphic both effects to a container (at a time).

![WhatsApp Image 2021-08-21 at 5 20 05 PM](https://user-images.githubusercontent.com/64513385/130320848-f8266097-3157-4bf0-ad07-01842512669b.jpeg)

## Usage
`DuoMorphicCard` need four argument which is `child`, `width`, `height` and `radious` of card

```dart
            DuoMorphicCard(
              height: 200,
              width: 200,
              blur: 5,
              innerShadowColor: Colors.grey,
              radius: BorderRadius.circular(10),
              cardBackgroundColor: Colors.white,
              opacity: 0.5,
              offset: Offset(-5, -5),
              child: Center(
                child: Text('Hello World'),
              ),
            ),

```
