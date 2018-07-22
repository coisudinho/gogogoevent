# Go Go Go
Sistema de cadastro de eventos e atrações.

## Demonstração
  ### Online
  * [Go Go Go]( https://gogogoevent.herokuapp.com )

  ### Screenshot
  * ![alt tag](https://i.imgur.com/DG6r8yK.png/)

## Pre requisitos:
1. Serviço de banco de dados Postgresql

2. Versões de plataformas:
```
	* Ruby 2.5.1
	* Rails 5.2.0
```

3. Em caso de sistem operacional Windows:
[How To Install The RMagick #RubyOnRails Gem on Windows 7 / 8 / 10 (ImageMagick 6.9.4 Q16-HDRI)]( https://medium.com/ruby-on-rails-web-application-development/install-rmagick-gem-on-windows-7-8-10-imagemagick-6-9-4-q16-hdri-5492c3fef202 )

## Instalação
1. Faça o clone deste projeto:
```
	git clone https://github.com/coisudinho/gogogoevent.git
```

2. Abra o bash ou prompt de comando, entre na pasta do projeto e execute o comando:
```
	bundle install
```

3. Prepare a base de dados:
```
	rails db:create
	rails db:migrate
```

## Testando a aplicação
1. Rode o serviço:
```
	rails s
```

2. Abra o browser e visite a página
```
	http://localhost:3000
```

