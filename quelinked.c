#include<stdio.h>
#include<stdlib.h>
#include "quelinked.h"
/*
int main(){
	struct queue Q;
	queueCreate(&Q);
	printf("%x..\n", Q.front);
	enqueue(&Q, 'R');
	printf("%c....\n", queuePeek(&Q));
	printf("%c....\n", dequeue(&Q));
	queueDestroy(&Q);	
	return 0;
}
*/
void queueCreate(struct queue * Q){
	(Q->front) = NULL;
}

void queueDestroy(struct queue * Q){
	delLink(&(Q->front));
}

int delLink(struct linkedNode **  head){
	if((*head)==NULL) return 0;
	delLink(&(*head)->next);
	free(*head);
	*head = NULL;
	return 0;
}

void enqueue(struct queue * Q, TCB val){
	struct linkedNode * node = malloc(sizeof(struct linkedNode));
	node -> data = val;
	node -> next = NULL;
	struct linkedNode * temp = (Q->front);
	if(temp != NULL){
		while((temp->next)!=NULL){
			temp = temp->next;
		}
		temp -> next = node;
	}else{
		Q->front = node;
	}
}

TCB dequeue(struct queue * Q){
	struct linkedNode * head = (Q->front);
	if(head==NULL) return NULL;
	//TCB temp = malloc(sizeof(tcb_t));
	TCB temp = (head -> data);
	//printf("data old node: %p",head->data);
	(Q->front) = (head -> next);
	//printf("data new node: %p",Q->front->data);
	//free(head);
	return temp;
}

TCB queuePeek(struct queue *Q){
	TCB temp = malloc(sizeof(tcb_t));
	temp = (Q->front)->data ;
	return temp; 
}

int queueIsEmpty(struct queue * Q){
	if((Q->front)==NULL) return 1;
	return 0;
}	
