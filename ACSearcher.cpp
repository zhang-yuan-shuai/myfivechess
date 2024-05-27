#include "stdafx.h"
#include "ACSearcher.h"

#include <cassert>


ACSearcher::ACSearcher()
    :maxState(0)
{
    //��ʼ�����ڵ�
    AddState(-1, 'a');
    nodes[0].fail = -1;

}


ACSearcher::~ACSearcher()
{
}


void ACSearcher::LoadPattern(const vector<string>& paterns) {
    this->paterns = paterns;
}

void ACSearcher::BuildGotoTable() {
    assert(nodes.size());

    unsigned int i, j;
    for (i = 0; i < paterns.size(); i++) {
        //�Ӹ��ڵ㿪ʼ
        int currentIndex = 0;
        for (j = 0; j < paterns[i].size(); j++) {
            if (nodes[currentIndex].sons.find(paterns[i][j]) == nodes[currentIndex].sons.end()) {
                nodes[currentIndex].sons[paterns[i][j]] = ++maxState;

                //�����½ڵ�
                AddState(currentIndex, paterns[i][j]);
                currentIndex = maxState;
            }
            else {
                currentIndex = nodes[currentIndex].sons[paterns[i][j]];
            }
        }

        nodes[currentIndex].output.push_back(i);
    }
}

void ACSearcher::BuildFailTable() {
    assert(nodes.size());

    //�м�ڵ��ռ���
    vector<int> midNodesIndex;

    //����һ��Ľڵ�����failΪ0�����ѵڶ���ڵ���뵽midState��
    ACNode root = nodes[0];

    map<char, int>::iterator iter1, iter2;
    for (iter1 = root.sons.begin(); iter1 != root.sons.end(); iter1++) {
        nodes[iter1->second].fail = 0;
        ACNode &currentNode = nodes[iter1->second];

        //�ռ�������ڵ�
        for (iter2 = currentNode.sons.begin(); iter2 != currentNode.sons.end(); iter2++) {
            midNodesIndex.push_back(iter2->second);
        }
    }

    //������ȱ���
    while (midNodesIndex.size()) {
        vector<int> newMidNodesIndex;

        unsigned int i;
        for (i = 0; i < midNodesIndex.size(); i++) {
            ACNode &currentNode = nodes[midNodesIndex[i]];

            //����ѭ��ΪѰ�ҵ�ǰ�ڵ��failֵ
            int currentFail = nodes[currentNode.parent].fail;
            while (true) {
                ACNode &currentFailNode = nodes[currentFail];

                if (currentFailNode.sons.find(currentNode.ch) != currentFailNode.sons.end()) {
                    //�ɹ��ҵ��ýڵ��failֵ
                    currentNode.fail = currentFailNode.sons.find(currentNode.ch)->second;

                    //��׺����
                    if (nodes[currentNode.fail].output.size()) {
                        currentNode.output.insert(currentNode.output.end(), nodes[currentNode.fail].output.begin(), nodes[currentNode.fail].output.end());
                    }

                    break;
                }
                else {
                    currentFail = currentFailNode.fail;
                }

                //����Ǹ��ڵ�
                if (currentFail == -1) {
                    currentNode.fail = 0;
                    break;
                }
            }

            //�ռ���һ��ڵ�
            for (iter1 = currentNode.sons.begin(); iter1 != currentNode.sons.end(); iter1++) {
                //�ռ���һ��ڵ�
                newMidNodesIndex.push_back(iter1->second);
            }
        }
        midNodesIndex = newMidNodesIndex;
    }
}

vector<int> ACSearcher::ACSearch(const string& text) {
    vector<int> result;

    //��ʼ��Ϊ���ڵ�
    int currentIndex = 0;

    unsigned int i;
    map<char, int>::iterator tmpIter;
    for (i = 0; i < text.size();) {
        //˳��trie������
        if ((tmpIter = nodes[currentIndex].sons.find(text[i])) != nodes[currentIndex].sons.end()) {
            currentIndex = tmpIter->second;
            i++;
        }
        else {
            //ʧ������
            while (nodes[currentIndex].fail != -1 && nodes[currentIndex].sons.find(text[i]) == nodes[currentIndex].sons.end()) {
                currentIndex = nodes[currentIndex].fail;
            }

            //���û�гɹ��ҵ����ʵ�fail
            if (nodes[currentIndex].sons.find(text[i]) == nodes[currentIndex].sons.end()) {
                i++;
            }
        }

        if (nodes[currentIndex].output.size()) {
            result.insert(result.end(), nodes[currentIndex].output.begin(), nodes[currentIndex].output.end());
        }

    }

    return result;
}

void ACSearcher::AddState(int parent, char ch) {
    nodes.push_back(ACNode(parent, ch));
    assert(nodes.size() - 1 == maxState);
}
