#include <stdio.h>

/* what ever the helper functions you need for the 
 * implementation of bigints
 * the prototypes goes here and the functions should be 
 * implemented in the helper.c
 */
struct linked_node {
	char data;
	struct linked_node * next;
};


int addnode(char data, struct linked_node **head); 

void deletelist(struct linked_node **head); 

void showlist(struct linked_node *head);




