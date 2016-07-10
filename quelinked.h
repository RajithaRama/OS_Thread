#ifndef __QUE__
#define __QUE__

void queueCreate(struct queue * Q);
void queueDestroy(struct queue * Q);
void enqueue(struct queue * Q, char val);
char dequeue(struct queue * Q);
char queuePeek(struct queue * Q);
int queueIsEmpty(struct queue * Q);
int delLink(struct linkedNode **  head);

#endif
