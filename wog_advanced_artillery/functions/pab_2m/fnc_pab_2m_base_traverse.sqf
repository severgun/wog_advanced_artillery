
private ["_phase", "_newPhase", "_gun","_mult","_dir"];
_gun = vehicle player;

_dir = _this select 3;	// +1/-1
_mult = 1;

if (_this select 0) then {_mult=_mult*10};	// shift
if (_this select 2) then {_mult=_mult*0.5};	// alt

_phase = _gun animationSourcePhase "base_rotation_source";
_newPhase = _phase+_dir*_mult;
_gun animateSource ["base_rotation_source", _newPhase];
//player setVariable ["wog_advanced_artillery_pab_2m_base_phase",_newPhase];