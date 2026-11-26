import 'package:flutter_test/flutter_test.dart';
import 'package:ondevice_llm/core/l10n/l10n.dart';
import 'package:ondevice_llm/data/network/web_search/duckduckgo_scraper.dart';
import 'package:ondevice_llm/data/network/web_search/wikipedia_client.dart';
import 'package:ondevice_llm/features/chat/domain/about_user.dart';
import 'package:ondevice_llm/features/chat/domain/math_question.dart';
import 'package:ondevice_llm/features/shortcuts/domain/prompt_shortcut.dart';
import 'package:ondevice_llm/features/voice/voice_models.dart';
import 'package:ondevice_llm/features/voice/voice_pipeline.dart';
import 'package:ondevice_llm/l10n/app_localizations_pt.dart';

/// Portuguese (Portugal) as the app's fourth language.
void main() {
  test('Portuguese is offered and has its own strings', () {
    expect(supportedLanguageCodes, contains('pt'));
    final pt = stringsFor('pt');
    expect(pt, isA<AppLocalizationsPt>());
    expect(pt.settings, 'Definições');
    expect(pt.languagePortuguese, 'Português (Portugal)');
    expect(AppLocalizationsEn().languagePortuguese, 'Português (Portugal)');
  });

  test('European Portuguese plurals and placeholders', () {
    final pt = AppLocalizationsPt();
    expect(pt.goalStepsOf(1, 1), '1 de 1 passo');
    expect(pt.goalStepsOf(2, 5), '2 de 5 passos');
    expect(pt.goalSources(3), '3 fontes');
    expect(pt.phoneRam('8'), 'Este telemóvel · 8 GB de RAM');
    expect(pt.uiAdvancedToolsPageSearchDocuments, 'search_documents');
  });

  test('voice follows the app language into Portuguese', () {
    expect(voiceLanguage('pt'), 'pt');
    expect(systemSpeechLocale('pt'), 'pt-PT');
    expect(systemSpeechLocale('fr'), isNull);
    expect(systemSpeechLocale('en'), isNull);
    expect(VoiceModels.supertonicLanguage(voiceLanguage('pt')), 'pt');
  });

  test('Kokoro offers its Brazilian Portuguese voices, named as such', () {
    final voices = KokoroVoice.byLanguage['pt']!;
    expect(voices.map((v) => v.sid), [42, 43, 44]);
    expect(voices.every((v) => v.lang == 'pt-br'), isTrue);
    expect(voices.every((v) => v.name.contains('Brasil')), isTrue);
    expect(KokoroVoice.forLanguage('pt', sid: 43).name, startsWith('Alex'));
  });

  test('a Portuguese question is answered in European Portuguese', () {
    expect(
      WikipediaClient.languageFor('Qual é a capital da Austrália?', 'en'),
      'pt',
    );
    expect(
      WikipediaClient.languageFor('Quantos habitantes tem o Porto?', 'en'),
      'pt',
    );
    expect(WikipediaClient.languageFor('What is the capital?', 'pt'), 'en');
    expect(WikipediaClient.answerLanguage('pt'), contains('Portugal'));
    expect(WikipediaClient.languages, contains('pt'));
  });

  test('search region is Portugal, Brazil keeps its own', () {
    expect(DuckDuckGoScraper.regionFor('pt', localeName: 'en_US'), 'pt-pt');
    expect(DuckDuckGoScraper.regionFor('pt', localeName: 'pt_BR'), 'br-pt');
    expect(DuckDuckGoScraper.regionFor('', localeName: 'pt_PT'), 'pt-pt');
  });

  test('name questions and spoken sums in Portuguese', () {
    expect(
      AboutUser.spokenName('Como me chamo?', ['Olá, chamo-me Rita.']),
      'Chamas-te Rita.',
    );
    expect(
      AboutUser.spokenName('Qual é o meu nome?', ['O meu nome é Tiago']),
      'Chamas-te Tiago.',
    );
    expect(MathQuestion.spoken('Quanto é 2.5 mais 3?'), '2,5 mais 3 é 5,5.');
  });

  test('built-in shortcuts are translated', () {
    final translate = PromptShortcut.builtIns
        .firstWhere((s) => s.name == 'translate')
        .localized('pt');
    expect(translate.description, startsWith('Traduzir'));
    expect(translate.expand('fr Bom dia'), contains('para francês'));
  });
}
