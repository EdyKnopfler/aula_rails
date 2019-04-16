require 'net/http'
require 'uri'
require 'json'

class BuscaController < ApplicationController

    def form
    end
    
    def buscar
        if not params[:cep] =~ /^\d{8}$/
            redirect_to procurar_cep_path
        else
            res = Net::HTTP.get URI("https://viacep.com.br/ws/#{params[:cep]}/json")
            @dados = JSON.parse(res)
            
            puts @dados
            
            
            pessoa = Pessoa.new(logradouro: @dados['logradouro'],
                                cep: params[:cep],
                                cidade: @dados['localidade'],
                                estado: @dados['uf'])
            pessoa.save
            redirect_to edit_pessoa_path(pessoa)
        end
    end
    
end
