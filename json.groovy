import com.fasterxml.jackson.databind.JsonNode
import com.fasterxml.jackson.databind.ObjectMapper
import groovy.json.JsonBuilder
import groovy.json.JsonSlurper

JsonBuilder jsonBuilder = new JsonBuilder()

def aaa = "bla"

jsonBuilder.br {
    parties(
            [
                    {
                        id 1
                        name aaa
                    },
                    {
                        id 2
                        name "P2"
                        someArray "value1", "value2"
                    }
            ]
    )
    other 12
    someObj {
        name "Object"
        type "Json"
    }
}


println jsonBuilder.toString()
JsonSlurper jsonSlurper = new JsonSlurper()
slurper = jsonSlurper.parseText(jsonBuilder.toString())

println slurper.br.parties[0].name

JsonNode jsonNode = new ObjectMapper().readTree(jsonBuilder.toString())

println jsonNode.br.parties[0].name.asText()

class ToJson {
    int id = 7
    String name = "Extra"
    List list = [1,2,3,4]
}

ToJson tj = new ToJson()

JsonNode jn = new ObjectMapper().valueToTree(tj)
println jn

Map map = [
        id: 7,
        name: "buba",
        coll: [
                1,2,3
        ],
        complex: [
                id: 1,
                title: "this title"
        ],
        parties: [
                [
                        id: 100,
                        name: "Party 1"
                ],
                [
                        id: 101,
                        name: "Party 2"
                ]
        ]
]

JsonNode node = new ObjectMapper().convertValue(map, JsonNode.class)

println node

String nodeStr = new ObjectMapper().writeValueAsString(map)

println nodeStr

println node.at("/parties/1/name").asText("n/a")

String date = "2022-01-02T10:39:35.111Z"

long diff = LocalDate.now() - LocalDate.parse(date, DateTimeFormatter.ISO_DATE_TIME)
println diff