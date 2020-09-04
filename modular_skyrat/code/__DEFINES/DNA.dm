//We start from 10 to not interfere with TG species defines, should they add more
/// We're using all three mutcolor features for our skin coloration
#define MUTCOLOR_MATRIXED	10
#define MUTCOLORS2			11
#define MUTCOLORS3			12
// Defines for whether an accessory should have one or three colors to choose for
#define USE_ONE_COLOR		11
#define USE_MATRIXED_COLORS	12
//Also.. yes for some reason specie traits and accessory defines are together

//Some defines for sprite accessories

// Which color source we're using when the accessory is added 
#define DEFAULT_PRIMARY		1
#define DEFAULT_SECONDARY	2
#define DEFAULT_TERTIARY	3
#define DEFAULT_MATRIXED	4 //uses all three colors for a matrix
#define DEFAULT_SKIN_OR_PRIMARY	5 //Uses skin tone color if the character uses one, otherwise primary

// Defines for extra bits of accessories
#define COLOR_SRC_PRIMARY	1
#define COLOR_SRC_SECONDARY	2
#define COLOR_SRC_TERTIARY	3
#define COLOR_SRC_MATRIXED	4

// Defines for mutant bodyparts indexes
#define MUTANT_INDEX_NAME		"name"
#define MUTANT_INDEX_COLOR_LIST	"color"

//Does this need alpha (4th thing) in the color lists? I dont know!! help
#define HUSK_COLOR_LIST list(list(0.64, 0.64, 0.64, 1), list(0.64, 0.64, 0.64, 1), list(0.64, 0.64, 0.64, 1), list(0, 0, 0, 1))

//Defines for an accessory to be randomed
#define ACC_RANDOM		"random"

//organ slots
#define ORGAN_SLOT_PENIS "penis"
#define ORGAN_SLOT_WOMB "womb"
#define ORGAN_SLOT_VAGINA "vagina"
#define ORGAN_SLOT_TESTICLES "testicles"
#define ORGAN_SLOT_BREASTS "breasts"

#define ORGAN_SLOT_WINGS "wings"

#define MAXIMUM_MARKINGS_PER_LIMB 3

#define PREVIEW_PREF_JOB "Job"
#define PREVIEW_PREF_LOADOUT "Loadout"
#define PREVIEW_PREF_NAKED "Naked"
