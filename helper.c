#include "helper.h"
#include <stdio.h>
#include <stdlib.h>


int addnode(char data, struct linked_node **head) 
{
  struct linked_node *tmp = malloc(sizeof(struct linked_node));
  if(!tmp) 
    return -1;
  
  tmp -> data = data;
  (tmp -> next) = *head; 
  *head = tmp;

  return 0; 
  
}


void deletelist(struct linked_node **head)
{
  if(!*head);// if head = null do nothing= stop waiting.
	else{
	deletelist(&((*head)->next));// delete the next head first
	free(*head);//free this head
	*head = NULL;// head points to nothing
	}
}

void showlist(struct linked_node *head)
{	
  while(head) { 
    printf("%d", head -> data);
    head = head -> next;
  }
	printf("\n");
}

