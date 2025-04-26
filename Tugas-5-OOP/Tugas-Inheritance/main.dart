import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  var armorTitan = ArmorTitan();
  var attackTitan = AttackTitan();
  var beastTitan = BeastTitan();
  var human = Human();

  armorTitan.setPowerPoint(3); 
  attackTitan.setPowerPoint(10);
  beastTitan.setPowerPoint(4); 
  human.setPowerPoint(7);

  print("Armor Titan PowerPoint: ${armorTitan.getPowerPoint()}");
  print("Attack Titan PowerPoint: ${attackTitan.getPowerPoint()}");
  print("Beast Titan PowerPoint: ${beastTitan.getPowerPoint()}");
  print("Human PowerPoint: ${human.getPowerPoint()}");

  print("\nAksi masing-masing:");
  print("Armor Titan: ${armorTitan.terjang()}");
  print("Attack Titan: ${attackTitan.punch()}");
  print("Beast Titan: ${beastTitan.lempar()}");
  print("Human: ${human.killAllTitan()}");
}