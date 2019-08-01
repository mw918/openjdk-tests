/*******************************************************************************
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*******************************************************************************/
package net.adoptopenjdk.casa.workload_sessions.payload;

import net.adoptopenjdk.casa.workload_sessions.configuration.PayloadConfiguration;

/**
 * 
 * 
 *  
 */
public class CharArrayPayload extends ArrayPayload 
{
	protected static final int BYTES_PER_ELEMENT = 2;  
	
	char[] payload; 
	
	public CharArrayPayload(PayloadConfiguration configuration) throws PayloadException
	{
		super(configuration);

		payload = new char[(int)getNumElements(BYTES_PER_ELEMENT)]; 
	}
}
