import 'package:fpl_mobile/model/event.dart';
import 'package:fpl_mobile/model/phase.dart';
import 'package:fpl_mobile/model/team.dart';
import 'package:fpl_mobile/model/element.dart';
import 'package:fpl_mobile/model/element_type.dart';

class BootstrapData {
  final List<Event> events;
  final List<Phase> phases;
  final List<Team> teams;
  final List<Element> elements;
  final List<ElementType> elementTypes;

  BootstrapData(
      {this.events, this.phases, this.teams, this.elements, this.elementTypes});

  factory BootstrapData.fromJson(Map<String, dynamic> json) {
    var fromEvents = json['events'] as List;
    var fromPhases = json['phases'] as List;
    var fromTeams = json['teams'] as List;
    var fromElements = json['elements'] as List;
    var fromElementsT = json['element_types'] as List;
    List<Event> eventList = fromEvents.map((i) => Event.fromJson(i)).toList();
    List<Phase> phaseList = fromPhases.map((i) => Phase.fromJson(i)).toList();
    List<Team> teamList = fromTeams.map((i) => Team.fromJson(i)).toList();
    List<Element> elementList =
        fromElements.map((i) => Element.fromJson(i)).toList();
    List<ElementType> elementTList =
        fromElementsT.map((i) => ElementType.fromJson(i)).toList();

    return BootstrapData(
      events: eventList,
      phases: phaseList,
      teams: teamList,
      elements: elementList,
      elementTypes: elementTList,
    );

    // return BootstrapData(
    //   events: List<Event>.from(json['events']),
    //   phases: phaseList,
    //   teams: teamList,
    //   elements: elementList,
    //   elementTypes: elementTList,
    // );
  }
}
