#ifndef __QUE__
#define __QUE__

struct tcb {
  void * sp;  /* Address of stack pointer. 
              * Keep this as first element would ease switch.S 
              * You can do something else as well. 
              */

  //long long int registers[16];
  /* you will need others stuff */
};

typedef struct tcb tcb_t;
typedef struct tcb *TCB;

struct linkedNode {
        TCB data;
        struct linkedNode * next;
};

struct queue{
        struct linkedNode * front;

};

void queueCreate(struct queue * Q);
void queueDestroy(struct queue * Q);
void enqueue(struct queue * Q, TCB val);
TCB dequeue(struct queue * Q);
TCB queuePeek(struct queue * Q);
int queueIsEmpty(struct queue * Q);
int delLink(struct linkedNode **  head);


#endif
