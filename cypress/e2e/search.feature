
@google @searchfeature @regression
Feature: Search Page
Scenario: Verify Top Search Results - Google
  Given I visit <site> page
  When I search <searchItem>
  Then Should show <searchResult> as top search results

  Examples:
    | site | searchItem | searchResult |
    |    'https://google.com/' |   'mangoes' | 'Mangoes: Benefits, nutrition, and recipes' |
    |    'https://google.com/' |   'apples' |'Apples: Benefits, nutrition, and tips' |


@duckduckgo @searchfeature @dev
Scenario: Verify Search bar in Duckduckgo
  Given I visit <site> page
  When I search <searchItem>
  Then Should show <searchItem> in search bar 

  Examples:
    | searchItem | site |
    |   'children' | 'https://duckduckgo.com/' |
    |'deoxynucl' | 'https://duckduckgo.com/' |
    | 'study of life' | 'https://duckduckgo.com/' |

