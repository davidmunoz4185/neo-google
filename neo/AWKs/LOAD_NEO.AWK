BEGIN{
        FS="|"
}
{
        printf "MERGE(P:COUNTRY{NAME: \"%s\"});\n",$1
        printf "MERGE(P:CITY{NAME: \"%s\"});\n",$2
        printf "MATCH(CO:COUNTRY{NAME: \"%s\"}),(CI:CITY{NAME: \"%s\"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);\n",$1,$2
        printf "MERGE(M:MUSEUM{NAME: \"%s\"});\n",$3
        printf "MATCH(CI:CITY{NAME: \"%s\"}),(M:MUSEUM{NAME: \"%s\"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);\n",$2,$3
        printf "MERGE(W:WEB{URL: \"%s\"});\n",$5
        printf "MATCH(M:MUSEUM{NAME: \"%s\"}),(W:WEB{URL: \"%s\"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);\n",$3,$5
        printf "MERGE(I:IMAGE{SRC: \"%s\"});\n",$4
        printf "MATCH(M:MUSEUM{NAME: \"%s\"}),(I:IMAGE{SRC: \"%s\"}) MERGE (I)-[IM:WEB_IMAGE]->(M);\n",$3,$4
}END{

}

