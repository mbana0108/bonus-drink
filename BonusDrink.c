#include <stdio.h>
#include <string.h>

int main(){
    int num, buy_drink;
    int bonus = 0;
    int sum_drink = 0;
    char state[100];

    while(1)
    {
        //ユーザーに購入する飲み物の本数を入力してもらう
        printf("How many drinks?\n");
        scanf("%d", &num);

        //合計の購入数を更新
        sum_drink += num;
        
        //空き瓶によるボーナスを計算
        bonus = sum_drink / 3;

        //飲める合計の本数を計算
        buy_drink = num + bonus;

        printf("Total drinks %d\n\n", buy_drink);    

        //プログラムを続けるかどうかをユーザーに尋ねる
        printf("continue? y/n\n");
        scanf("%s", state);

        //"n"が入力されたらループを終了
        if(strcmp(state, "n") == 0){
            break;
        }
    }

    //最終的なトータルの飲み物の本数を表示
    printf("Total drinks %d\n", buy_drink);

    return 0;
}